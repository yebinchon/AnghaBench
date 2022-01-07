
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_pull_state {int convert_buffer; } ;
struct ao {TYPE_1__* driver; struct ao_pull_state* api_priv; } ;
struct TYPE_2__ {int (* uninit ) (struct ao*) ;} ;


 int stub1 (struct ao*) ;
 int talloc_free (int ) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;

    ao->driver->uninit(ao);

    talloc_free(p->convert_buffer);
}
