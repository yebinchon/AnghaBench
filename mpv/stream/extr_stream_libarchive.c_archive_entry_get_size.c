
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int entry_size; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef int int64_t ;



__attribute__((used)) static int64_t archive_entry_get_size(stream_t *s)
{
    struct priv *p = s->priv;
    return p->entry_size;
}
