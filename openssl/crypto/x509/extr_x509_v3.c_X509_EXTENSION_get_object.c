
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * object; } ;
typedef TYPE_1__ X509_EXTENSION ;
typedef int ASN1_OBJECT ;



ASN1_OBJECT *X509_EXTENSION_get_object(X509_EXTENSION *ex)
{
    if (ex == ((void*)0))
        return ((void*)0);
    return ex->object;
}
