
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nid; } ;
struct TYPE_5__ {TYPE_4__* obj; } ;
typedef TYPE_1__ ADDED_OBJ ;


 int ASN1_OBJECT_free (TYPE_4__*) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void cleanup3_doall(ADDED_OBJ *a)
{
    if (--a->obj->nid == 0)
        ASN1_OBJECT_free(a->obj);
    OPENSSL_free(a);
}
