
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* propName; int vProp; } ;
typedef TYPE_1__ IDxDiagContainerImpl_Property ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int VariantClear (int *) ;

__attribute__((used)) static void free_property_information(IDxDiagContainerImpl_Property *prop)
{
    VariantClear(&prop->vProp);
    HeapFree(GetProcessHeap(), 0, prop->propName);
    HeapFree(GetProcessHeap(), 0, prop);
}
