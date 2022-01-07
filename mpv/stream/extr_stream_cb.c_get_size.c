
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* size_fn ) (int ) ;int cookie; } ;
struct priv {TYPE_1__ info; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_2__ stream_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int64_t get_size(stream_t *s)
{
    struct priv *p = s->priv;

    if (p->info.size_fn) {
        int64_t size = p->info.size_fn(p->info.cookie);
        if (size >= 0)
            return size;
    }

    return -1;
}
