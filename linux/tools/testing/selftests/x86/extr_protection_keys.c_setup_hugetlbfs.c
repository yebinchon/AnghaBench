
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ GET_NR_HUGE_PAGES ;
 int O_RDONLY ;
 int __stringify (scalar_t__) ;
 scalar_t__ atoi (char*) ;
 int cat_into_file (int ,char*) ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ geteuid () ;
 int hugetlb_setup_ok ;
 int open (char*,int ) ;
 int perror (char*) ;
 int read (int,char*,int) ;
 int stderr ;

void setup_hugetlbfs(void)
{
 int err;
 int fd;
 char buf[] = "123";

 if (geteuid() != 0) {
  fprintf(stderr, "WARNING: not run as root, can not do hugetlb test\n");
  return;
 }

 cat_into_file(__stringify(GET_NR_HUGE_PAGES), "/proc/sys/vm/nr_hugepages");





 fd = open("/sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages", O_RDONLY);
 if (fd < 0) {
  perror("opening sysfs 2M hugetlb config");
  return;
 }


 err = read(fd, buf, sizeof(buf)-1);
 close(fd);
 if (err <= 0) {
  perror("reading sysfs 2M hugetlb config");
  return;
 }

 if (atoi(buf) != GET_NR_HUGE_PAGES) {
  fprintf(stderr, "could not confirm 2M pages, got: '%s' expected %d\n",
   buf, GET_NR_HUGE_PAGES);
  return;
 }

 hugetlb_setup_ok = 1;
}
