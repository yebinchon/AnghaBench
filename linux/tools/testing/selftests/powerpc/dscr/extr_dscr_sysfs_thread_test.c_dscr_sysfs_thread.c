
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNT ;
 int DSCR_MAX ;
 scalar_t__ check_cpu_dscr_thread (int) ;
 unsigned long get_default_dscr () ;
 int set_default_dscr (unsigned long) ;

int dscr_sysfs_thread(void)
{
 unsigned long orig_dscr_default;
 int i, j;

 orig_dscr_default = get_default_dscr();
 for (i = 0; i < COUNT; i++) {
  for (j = 0; j < DSCR_MAX; j++) {
   set_default_dscr(j);
   if (check_cpu_dscr_thread(j))
    goto fail;
  }
 }
 set_default_dscr(orig_dscr_default);
 return 0;
fail:
 set_default_dscr(orig_dscr_default);
 return 1;
}
