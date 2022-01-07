
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cookie; scalar_t__ (* read_fn ) (int ,void*,size_t) ;} ;
struct priv {TYPE_1__ info; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ stub1 (int ,void*,size_t) ;

__attribute__((used)) static int fill_buffer(stream_t *s, void *buffer, int max_len)
{
    struct priv *p = s->priv;
    return (int)p->info.read_fn(p->info.cookie, buffer, (size_t)max_len);
}
