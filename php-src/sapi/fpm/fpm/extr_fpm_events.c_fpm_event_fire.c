
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_event_s {int arg; int which; int (* callback ) (struct fpm_event_s*,int ,int ) ;} ;


 int stub1 (struct fpm_event_s*,int ,int ) ;

void fpm_event_fire(struct fpm_event_s *ev)
{
 if (!ev || !ev->callback) {
  return;
 }

 (*ev->callback)( (struct fpm_event_s *) ev, ev->which, ev->arg);
}
