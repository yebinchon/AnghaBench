
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKULL_M_KEY_CNG_PROPERTY ;
typedef size_t DWORD ;


 int LocalFree (int *) ;
 int kull_m_key_cng_property_delete (int ) ;

void kull_m_key_cng_properties_delete(PKULL_M_KEY_CNG_PROPERTY *properties, DWORD count)
{
 DWORD i;
 if(properties)
 {
  for(i = 0; i < count; i++)
   kull_m_key_cng_property_delete(properties[i]);
  LocalFree(properties);
 }
}
