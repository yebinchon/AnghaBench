
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ X509_OBJECT ;
typedef int X509_LOOKUP_TYPE ;



X509_LOOKUP_TYPE X509_OBJECT_get_type(const X509_OBJECT *a)
{
    return a->type;
}
