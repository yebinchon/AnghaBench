
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPM_CLEANUP_PARENT_EXEC ;
 int free (int *****) ;
 int saved_argc ;
 int ***** saved_argv ;

__attribute__((used)) static void fpm_pctl_cleanup(int which, void *arg)
{
 int i;
 if (which != FPM_CLEANUP_PARENT_EXEC) {
  for (i = 0; i < saved_argc; i++) {
   free(saved_argv[i]);
  }
  free(saved_argv);
 }
}
