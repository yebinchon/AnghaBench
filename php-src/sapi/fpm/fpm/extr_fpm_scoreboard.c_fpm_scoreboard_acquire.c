
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_s {int lock; } ;


 struct fpm_scoreboard_s* fpm_scoreboard ;
 int fpm_spinlock (int *,int) ;

struct fpm_scoreboard_s *fpm_scoreboard_acquire(struct fpm_scoreboard_s *scoreboard, int nohang)
{
 struct fpm_scoreboard_s *s;

 s = scoreboard ? scoreboard : fpm_scoreboard;
 if (!s) {
  return ((void*)0);
 }

 if (!fpm_spinlock(&s->lock, nohang)) {
  return ((void*)0);
 }
 return s;
}
