
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_s {unsigned int nprocs; struct fpm_scoreboard_proc_s** procs; } ;
struct fpm_scoreboard_proc_s {int dummy; } ;


 struct fpm_scoreboard_s* fpm_scoreboard ;
 int fpm_scoreboard_i ;

struct fpm_scoreboard_proc_s *fpm_scoreboard_proc_get(struct fpm_scoreboard_s *scoreboard, int child_index)
{
 if (!scoreboard) {
  scoreboard = fpm_scoreboard;
 }

 if (!scoreboard) {
  return ((void*)0);
 }

 if (child_index < 0) {
  child_index = fpm_scoreboard_i;
 }

 if (child_index < 0 || (unsigned int)child_index >= scoreboard->nprocs) {
  return ((void*)0);
 }

 return scoreboard->procs[child_index];
}
