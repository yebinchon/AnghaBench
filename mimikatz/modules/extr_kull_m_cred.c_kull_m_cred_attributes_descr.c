
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKULL_M_CRED_ATTRIBUTE ;
typedef size_t DWORD ;


 int kull_m_cred_attribute_descr (size_t,int ) ;

void kull_m_cred_attributes_descr(DWORD level, PKULL_M_CRED_ATTRIBUTE *Attributes, DWORD count)
{
 DWORD i;
 if(count && Attributes)
  for(i = 0; i < count; i++)
   kull_m_cred_attribute_descr(level, Attributes[i]);
}
