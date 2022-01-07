
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* obj; } ;
struct TYPE_4__ {int nid; } ;
typedef TYPE_2__ ADDED_OBJ ;



__attribute__((used)) static void cleanup2_doall(ADDED_OBJ *a)
{
    a->obj->nid++;
}
