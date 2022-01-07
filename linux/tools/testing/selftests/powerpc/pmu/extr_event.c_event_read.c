
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int result; int fd; } ;


 int fprintf (int ,char*,struct event*) ;
 int read (int ,int *,int) ;
 int stderr ;

int event_read(struct event *e)
{
 int rc;

 rc = read(e->fd, &e->result, sizeof(e->result));
 if (rc != sizeof(e->result)) {
  fprintf(stderr, "read error on event %p!\n", e);
  return -1;
 }

 return 0;
}
