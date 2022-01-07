
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* close ) (TYPE_1__*) ;} ;
typedef TYPE_1__ stream_t ;


 int stub1 (TYPE_1__*) ;
 int talloc_free (TYPE_1__*) ;

void free_stream(stream_t *s)
{
    if (!s)
        return;

    if (s->close)
        s->close(s);
    talloc_free(s);
}
