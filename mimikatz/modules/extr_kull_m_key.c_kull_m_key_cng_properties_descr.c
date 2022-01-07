
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKULL_M_KEY_CNG_PROPERTY ;
typedef size_t DWORD ;


 int kprintf (char*,size_t) ;
 int kull_m_key_cng_property_descr (size_t,int ) ;

void kull_m_key_cng_properties_descr(DWORD level, PKULL_M_KEY_CNG_PROPERTY *properties, DWORD count)
{
 DWORD i;
 if(count && properties)
 {
  kprintf(L"%u field(s)\n", count);
  for(i = 0; i < count; i++)
   kull_m_key_cng_property_descr(level, properties[i]);
 }
}
