
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * x509; } ;
struct TYPE_6__ {TYPE_1__ data; int type; } ;
typedef TYPE_2__ X509_OBJECT ;
typedef int X509 ;


 int X509_LU_X509 ;
 int X509_up_ref (int *) ;
 int x509_object_free_internal (TYPE_2__*) ;

int X509_OBJECT_set1_X509(X509_OBJECT *a, X509 *obj)
{
    if (a == ((void*)0) || !X509_up_ref(obj))
        return 0;

    x509_object_free_internal(a);
    a->type = X509_LU_X509;
    a->data.x509 = obj;
    return 1;
}
