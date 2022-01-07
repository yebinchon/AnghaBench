
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_3__ {char* x; int fd; int n; scalar_t__ p; int op; } ;
typedef TYPE_1__ buffer ;
typedef int BufferOp ;



void buffer_init(buffer *s, BufferOp op, int fd, char *buf, ut32 len) {
 s->x = buf;
 s->fd = fd;
 s->op = op;
 s->p = 0;
 s->n = len;
}
