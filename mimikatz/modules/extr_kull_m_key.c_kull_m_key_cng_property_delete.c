
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pProperty; struct TYPE_4__* pName; } ;
typedef TYPE_1__* PKULL_M_KEY_CNG_PROPERTY ;


 int LocalFree (TYPE_1__*) ;

void kull_m_key_cng_property_delete(PKULL_M_KEY_CNG_PROPERTY property)
{
 if(property)
 {
  if(property->pName)
   LocalFree(property->pName);
  if(property->pProperty)
   LocalFree(property->pProperty);
  LocalFree(property);
 }
}
