
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * properties; } ;
typedef int CONTEXT_PROPERTY_LIST ;


 int ContextPropertyList_Copy (int *,int *) ;
 int assert (int) ;
 TYPE_1__* context_from_ptr (void const*) ;

void Context_CopyProperties(const void *to, const void *from)
{
    CONTEXT_PROPERTY_LIST *toProperties, *fromProperties;

    toProperties = context_from_ptr(to)->properties;
    fromProperties = context_from_ptr(from)->properties;
    assert(toProperties && fromProperties);
    ContextPropertyList_Copy(toProperties, fromProperties);
}
