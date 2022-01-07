
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct priv {TYPE_1__ data; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_2__ stream_t ;
typedef int int64_t ;



__attribute__((used)) static int64_t get_size(stream_t *s)
{
    struct priv *p = s->priv;
    return p->data.len;
}
