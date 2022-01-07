
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int O_RDWR ;
 int PROC_KPAGECGROUP ;
 int PROC_KPAGECOUNT ;
 scalar_t__ PROC_KPAGEFLAGS ;
 int SYS_KERNEL_MM_PAGE_IDLE ;
 void* checked_open (int ,int ) ;
 int close (scalar_t__) ;
 int describe_flags (int ) ;
 int exit (int) ;
 int flush_page_range () ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int getpagesize () ;
 void* kpagecgroup_fd ;
 scalar_t__ kpagecount_fd ;
 scalar_t__ opt_cgroup ;
 scalar_t__ opt_file ;
 int opt_hwpoison ;
 scalar_t__ opt_kpageflags ;
 int opt_list ;
 int opt_list_cgroup ;
 int opt_list_mapcnt ;
 int opt_mark_idle ;
 int opt_no_summary ;
 scalar_t__ opt_pid ;
 int opt_raw ;
 int opt_unpoison ;
 int optarg ;
 int opts ;
 scalar_t__ page_idle_fd ;
 int page_size ;
 int parse_addr_range (int ) ;
 int parse_bits_mask (int ) ;
 int parse_cgroup (int ) ;
 int parse_file (int ) ;
 int parse_kpageflags (int ) ;
 int parse_pid (int ) ;
 int prepare_hwpoison_fd () ;
 int printf (char*) ;
 int show_summary () ;
 int usage () ;
 int walk_addr_ranges () ;
 int walk_page_cache () ;

int main(int argc, char *argv[])
{
 int c;

 page_size = getpagesize();

 while ((c = getopt_long(argc, argv,
    "rp:f:a:b:d:c:CilLMNXxF:h",
    opts, ((void*)0))) != -1) {
  switch (c) {
  case 'r':
   opt_raw = 1;
   break;
  case 'p':
   parse_pid(optarg);
   break;
  case 'f':
   parse_file(optarg);
   break;
  case 'a':
   parse_addr_range(optarg);
   break;
  case 'b':
   parse_bits_mask(optarg);
   break;
  case 'c':
   parse_cgroup(optarg);
   break;
  case 'C':
   opt_list_cgroup = 1;
   break;
  case 'd':
   describe_flags(optarg);
   exit(0);
  case 'i':
   opt_mark_idle = 1;
   break;
  case 'l':
   opt_list = 1;
   break;
  case 'L':
   opt_list = 2;
   break;
  case 'M':
   opt_list_mapcnt = 1;
   break;
  case 'N':
   opt_no_summary = 1;
   break;
  case 'X':
   opt_hwpoison = 1;
   prepare_hwpoison_fd();
   break;
  case 'x':
   opt_unpoison = 1;
   prepare_hwpoison_fd();
   break;
  case 'F':
   parse_kpageflags(optarg);
   break;
  case 'h':
   usage();
   exit(0);
  default:
   usage();
   exit(1);
  }
 }

 if (!opt_kpageflags)
  opt_kpageflags = PROC_KPAGEFLAGS;

 if (opt_cgroup || opt_list_cgroup)
  kpagecgroup_fd = checked_open(PROC_KPAGECGROUP, O_RDONLY);

 if (opt_list && opt_list_mapcnt)
  kpagecount_fd = checked_open(PROC_KPAGECOUNT, O_RDONLY);

 if (opt_mark_idle && opt_file)
  page_idle_fd = checked_open(SYS_KERNEL_MM_PAGE_IDLE, O_RDWR);

 if (opt_list && opt_pid)
  printf("voffset\t");
 if (opt_list && opt_file)
  printf("foffset\t");
 if (opt_list && opt_list_cgroup)
  printf("cgroup\t");
 if (opt_list && opt_list_mapcnt)
  printf("map-cnt\t");

 if (opt_list == 1)
  printf("offset\tlen\tflags\n");
 if (opt_list == 2)
  printf("offset\tflags\n");

 if (opt_file)
  walk_page_cache();
 else
  walk_addr_ranges();

 if (opt_list == 1)
  flush_page_range();

 if (opt_no_summary)
  return 0;

 if (opt_list)
  printf("\n\n");

 show_summary();

 if (opt_list_mapcnt)
  close(kpagecount_fd);

 if (page_idle_fd >= 0)
  close(page_idle_fd);

 return 0;
}
