
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwStructLen; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PKULL_M_KEY_CNG_PROPERTY ;
typedef int PBYTE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ TRUE ;
 int kull_m_key_cng_properties_delete (TYPE_1__**,int) ;
 TYPE_1__* kull_m_key_cng_property_create (int) ;

BOOL kull_m_key_cng_properties_create(PVOID data, DWORD size, PKULL_M_KEY_CNG_PROPERTY **properties, DWORD *count)
{
 BOOL status = FALSE;
 DWORD i, j;

 for(i = 0, *count = 0; i < size; i += ((PKULL_M_KEY_CNG_PROPERTY) ((PBYTE) data + i))->dwStructLen, (*count)++);

 if((*properties) = (PKULL_M_KEY_CNG_PROPERTY *) LocalAlloc(LPTR, *count * sizeof(PKULL_M_KEY_CNG_PROPERTY)))
 {
  for(i = 0, j = 0, status = TRUE; (i < (*count)) && status; i++)
  {
   if((*properties)[i] = kull_m_key_cng_property_create((PBYTE) data + j))
    j += (*properties)[i]->dwStructLen;
   else status = FALSE;
  }
 }
 if(!status)
 {
  kull_m_key_cng_properties_delete(*properties, *count);
  *properties = ((void*)0);
  *count = 0;
 }
 return status;
}
