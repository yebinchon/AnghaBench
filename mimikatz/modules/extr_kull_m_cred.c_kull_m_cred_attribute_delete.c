
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Value; struct TYPE_4__* Keyword; } ;
typedef TYPE_1__* PKULL_M_CRED_ATTRIBUTE ;


 int LocalFree (TYPE_1__*) ;

void kull_m_cred_attribute_delete(PKULL_M_CRED_ATTRIBUTE Attribute)
{
 if(Attribute)
 {
  if(Attribute->Keyword)
   LocalFree(Attribute->Keyword);
  if(Attribute->Value)
   LocalFree(Attribute->Value);
  LocalFree(Attribute);
 }
}
