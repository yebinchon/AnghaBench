
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_s {int idle; int active; int lq; int lq_len; int lq_max; int requests; int max_children_reached; int slow_rq; int active_max; int lock; } ;


 int FPM_SCOREBOARD_ACTION_SET ;
 int ZLOG_WARNING ;
 struct fpm_scoreboard_s* fpm_scoreboard ;
 int fpm_spinlock (int *,int ) ;
 int fpm_unlock (int ) ;
 int zlog (int ,char*) ;

void fpm_scoreboard_update(int idle, int active, int lq, int lq_len, int requests, int max_children_reached, int slow_rq, int action, struct fpm_scoreboard_s *scoreboard)
{
 if (!scoreboard) {
  scoreboard = fpm_scoreboard;
 }
 if (!scoreboard) {
  zlog(ZLOG_WARNING, "Unable to update scoreboard: the SHM has not been found");
  return;
 }


 fpm_spinlock(&scoreboard->lock, 0);
 if (action == FPM_SCOREBOARD_ACTION_SET) {
  if (idle >= 0) {
   scoreboard->idle = idle;
  }
  if (active >= 0) {
   scoreboard->active = active;
  }
  if (lq >= 0) {
   scoreboard->lq = lq;
  }
  if (lq_len >= 0) {
   scoreboard->lq_len = lq_len;
  }





  if (requests >= 0) {
   scoreboard->requests = requests;
  }

  if (max_children_reached >= 0) {
   scoreboard->max_children_reached = max_children_reached;
  }
  if (slow_rq > 0) {
   scoreboard->slow_rq = slow_rq;
  }
 } else {
  if (scoreboard->idle + idle > 0) {
   scoreboard->idle += idle;
  } else {
   scoreboard->idle = 0;
  }

  if (scoreboard->active + active > 0) {
   scoreboard->active += active;
  } else {
   scoreboard->active = 0;
  }

  if (scoreboard->requests + requests > 0) {
   scoreboard->requests += requests;
  } else {
   scoreboard->requests = 0;
  }

  if (scoreboard->max_children_reached + max_children_reached > 0) {
   scoreboard->max_children_reached += max_children_reached;
  } else {
   scoreboard->max_children_reached = 0;
  }

  if (scoreboard->slow_rq + slow_rq > 0) {
   scoreboard->slow_rq += slow_rq;
  } else {
   scoreboard->slow_rq = 0;
  }
 }

 if (scoreboard->active > scoreboard->active_max) {
  scoreboard->active_max = scoreboard->active;
 }

 fpm_unlock(scoreboard->lock);
}
