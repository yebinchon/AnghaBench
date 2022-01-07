
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int fd; scalar_t__ close; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;


 int close (int ) ;

__attribute__((used)) static void s_close(stream_t *s)
{
    struct priv *p = s->priv;
    if (p->close)
        close(p->fd);
}
