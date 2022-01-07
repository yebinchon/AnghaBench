
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_event_s {int fd; void (* callback ) (struct fpm_event_s*,short,void*) ;int flags; void* arg; } ;


 int memset (struct fpm_event_s*,int ,int) ;

int fpm_event_set(struct fpm_event_s *ev, int fd, int flags, void (*callback)(struct fpm_event_s *, short, void *), void *arg)
{
 if (!ev || !callback || fd < -1) {
  return -1;
 }
 memset(ev, 0, sizeof(struct fpm_event_s));
 ev->fd = fd;
 ev->callback = callback;
 ev->arg = arg;
 ev->flags = flags;
 return 0;
}
