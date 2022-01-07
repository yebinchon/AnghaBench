
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int x; int fd; int op; } ;
typedef TYPE_1__ buffer ;


 int allwrite (int ,int ,int ,int) ;

int buffer_flush(buffer *s) {
 int p = s->p;
 if (!p) {
  return 1;
 }
 s->p = 0;
 return allwrite (s->op, s->fd, s->x, p);
}
