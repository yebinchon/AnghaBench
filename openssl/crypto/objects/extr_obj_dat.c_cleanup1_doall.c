
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* obj; } ;
struct TYPE_4__ {int flags; scalar_t__ nid; } ;
typedef TYPE_2__ ADDED_OBJ ;


 int ASN1_OBJECT_FLAG_DYNAMIC ;
 int ASN1_OBJECT_FLAG_DYNAMIC_DATA ;
 int ASN1_OBJECT_FLAG_DYNAMIC_STRINGS ;

__attribute__((used)) static void cleanup1_doall(ADDED_OBJ *a)
{
    a->obj->nid = 0;
    a->obj->flags |= ASN1_OBJECT_FLAG_DYNAMIC |
        ASN1_OBJECT_FLAG_DYNAMIC_STRINGS | ASN1_OBJECT_FLAG_DYNAMIC_DATA;
}
