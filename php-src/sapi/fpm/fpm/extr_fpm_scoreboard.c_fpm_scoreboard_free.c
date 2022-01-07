
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_s {int nprocs; } ;
struct fpm_scoreboard_proc_s {int dummy; } ;


 int ZLOG_ERROR ;
 int fpm_shm_free (struct fpm_scoreboard_s*,size_t) ;
 int zlog (int ,char*) ;

void fpm_scoreboard_free(struct fpm_scoreboard_s *scoreboard)
{
 size_t scoreboard_size, scoreboard_nprocs_size;

 if (!scoreboard) {
  zlog(ZLOG_ERROR, "**scoreboard is NULL");
  return;
 }

 scoreboard_size = sizeof(struct fpm_scoreboard_s) + (scoreboard->nprocs) * sizeof(struct fpm_scoreboard_proc_s *);
 scoreboard_nprocs_size = sizeof(struct fpm_scoreboard_proc_s) * scoreboard->nprocs;

 fpm_shm_free(scoreboard, scoreboard_size + scoreboard_nprocs_size);
}
