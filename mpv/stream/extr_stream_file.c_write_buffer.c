
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int fd; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;


 int write (int ,void*,int) ;

__attribute__((used)) static int write_buffer(stream_t *s, void *buffer, int len)
{
    struct priv *p = s->priv;
    return write(p->fd, buffer, len);
}
