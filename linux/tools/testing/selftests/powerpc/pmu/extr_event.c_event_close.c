
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int fd; } ;


 int close (int ) ;

void event_close(struct event *e)
{
 close(e->fd);
}
