
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* seek_fn ) (int ,int ) ;int cookie; } ;
struct priv {TYPE_1__ info; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_2__ stream_t ;
typedef int int64_t ;


 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static int seek(stream_t *s, int64_t newpos)
{
    struct priv *p = s->priv;
    return p->info.seek_fn(p->info.cookie, newpos) >= 0;
}
