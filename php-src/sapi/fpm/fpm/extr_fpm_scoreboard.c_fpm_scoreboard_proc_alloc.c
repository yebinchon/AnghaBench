
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_scoreboard_s {size_t free_proc; unsigned int nprocs; TYPE_1__** procs; int pool; } ;
struct TYPE_2__ {int used; } ;


 int ZLOG_DEBUG ;
 int ZLOG_ERROR ;
 int zlog (int ,char*,int ) ;

int fpm_scoreboard_proc_alloc(struct fpm_scoreboard_s *scoreboard, int *child_index)
{
 int i = -1;

 if (!scoreboard || !child_index) {
  return -1;
 }


 if (scoreboard->free_proc >= 0 && (unsigned int)scoreboard->free_proc < scoreboard->nprocs) {
  if (scoreboard->procs[scoreboard->free_proc] && !scoreboard->procs[scoreboard->free_proc]->used) {
   i = scoreboard->free_proc;
  }
 }

 if (i < 0) {
  zlog(ZLOG_DEBUG, "[pool %s] the proc->free_slot was not free. Let's search", scoreboard->pool);
  for (i = 0; i < (int)scoreboard->nprocs; i++) {
   if (scoreboard->procs[i] && !scoreboard->procs[i]->used) {
    break;
   }
  }
 }


 if (i < 0 || i >= (int)scoreboard->nprocs) {
  zlog(ZLOG_ERROR, "[pool %s] no free scoreboard slot", scoreboard->pool);
  return -1;
 }

 scoreboard->procs[i]->used = 1;
 *child_index = i;


 if (i + 1 >= (int)scoreboard->nprocs) {
  scoreboard->free_proc = 0;
 } else {
  scoreboard->free_proc = i + 1;
 }

 return 0;
}
