
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_4__ {int fd; int op; } ;
typedef TYPE_1__ buffer ;


 int allwrite (int ,int ,char const*,int ) ;
 int buffer_flush (TYPE_1__*) ;

int buffer_putflush(buffer *s, const char *buf, ut32 len) {
 if (!buffer_flush (s)) {
  return 0;
 }
 return allwrite (s->op, s->fd, buf, len);
}
