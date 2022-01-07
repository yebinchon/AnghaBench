
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int njs_vm_event_t ;
struct TYPE_5__ {int start; } ;
struct TYPE_6__ {TYPE_1__ key; } ;
typedef TYPE_2__ njs_lvlhsh_query_t ;
typedef int njs_int_t ;
struct TYPE_7__ {int vm_event; } ;
typedef TYPE_3__ njs_ev_t ;


 int NJS_DECLINED ;
 int NJS_OK ;
 scalar_t__ memcmp (int *,int ,int) ;

__attribute__((used)) static njs_int_t
lvlhsh_key_test(njs_lvlhsh_query_t *lhq, void *data)
{
    njs_ev_t *ev;

    ev = data;

    if (memcmp(&ev->vm_event, lhq->key.start, sizeof(njs_vm_event_t)) == 0) {
        return NJS_OK;
    }

    return NJS_DECLINED;
}
