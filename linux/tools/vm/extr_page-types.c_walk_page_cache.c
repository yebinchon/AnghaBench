
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int FTW_MOUNT ;
 int FTW_PHYS ;
 int O_RDONLY ;
 int SIGBUS ;
 int SIG_DFL ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int checked_open (char*,int ) ;
 int close (int ) ;
 int fatal (char*,int ) ;
 int kpageflags_fd ;
 scalar_t__ nftw (int ,int ,int,int) ;
 int opt_file ;
 char* opt_kpageflags ;
 int pagemap_fd ;
 int sigaction (int ,int *,int *) ;
 int sigbus_action ;
 int signal (int ,int ) ;
 scalar_t__ stat (int ,struct stat*) ;
 int walk_file (int ,struct stat*) ;
 int walk_tree ;

__attribute__((used)) static void walk_page_cache(void)
{
 struct stat st;

 kpageflags_fd = checked_open(opt_kpageflags, O_RDONLY);
 pagemap_fd = checked_open("/proc/self/pagemap", O_RDONLY);
 sigaction(SIGBUS, &sigbus_action, ((void*)0));

 if (stat(opt_file, &st))
  fatal("stat failed: %s\n", opt_file);

 if (S_ISREG(st.st_mode)) {
  walk_file(opt_file, &st);
 } else if (S_ISDIR(st.st_mode)) {

  if (nftw(opt_file, walk_tree, 64, FTW_MOUNT | FTW_PHYS) < 0)
   fatal("nftw failed: %s\n", opt_file);
 } else
  fatal("unhandled file type: %s\n", opt_file);

 close(kpageflags_fd);
 close(pagemap_fd);
 signal(SIGBUS, SIG_DFL);
}
