
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; scalar_t__ start; } ;
struct priv {TYPE_2__ data; } ;
struct TYPE_4__ {scalar_t__ pos; struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef TYPE_2__ bstr ;


 int MPMIN (int,scalar_t__) ;
 int memcpy (void*,scalar_t__,int) ;

__attribute__((used)) static int fill_buffer(stream_t *s, void *buffer, int len)
{
    struct priv *p = s->priv;
    bstr data = p->data;
    if (s->pos < 0 || s->pos > data.len)
        return 0;
    len = MPMIN(len, data.len - s->pos);
    memcpy(buffer, data.start + s->pos, len);
    return len;
}
