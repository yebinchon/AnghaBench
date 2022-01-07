
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int MAX_PATH ;
 int O_WRONLY ;
 void* checked_open (char*,int ) ;
 char* debugfs__mount () ;
 int exit (int ) ;
 char* hwpoison_debug_fs ;
 void* hwpoison_forget_fd ;
 void* hwpoison_inject_fd ;
 scalar_t__ opt_hwpoison ;
 scalar_t__ opt_unpoison ;
 int perror (char*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static void prepare_hwpoison_fd(void)
{
 char buf[MAX_PATH + 1];

 hwpoison_debug_fs = debugfs__mount();
 if (!hwpoison_debug_fs) {
  perror("mount debugfs");
  exit(EXIT_FAILURE);
 }

 if (opt_hwpoison && !hwpoison_inject_fd) {
  snprintf(buf, MAX_PATH, "%s/hwpoison/corrupt-pfn",
   hwpoison_debug_fs);
  hwpoison_inject_fd = checked_open(buf, O_WRONLY);
 }

 if (opt_unpoison && !hwpoison_forget_fd) {
  snprintf(buf, MAX_PATH, "%s/hwpoison/unpoison-pfn",
   hwpoison_debug_fs);
  hwpoison_forget_fd = checked_open(buf, O_WRONLY);
 }
}
