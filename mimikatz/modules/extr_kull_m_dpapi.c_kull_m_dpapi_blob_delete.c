
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pbSign; struct TYPE_4__* pbData; struct TYPE_4__* pbHmack2Key; struct TYPE_4__* pbHmackKey; struct TYPE_4__* pbSalt; struct TYPE_4__* szDescription; } ;
typedef TYPE_1__* PKULL_M_DPAPI_BLOB ;


 int LocalFree (TYPE_1__*) ;

void kull_m_dpapi_blob_delete(PKULL_M_DPAPI_BLOB blob)
{
 if(blob)
 {
  if(blob->szDescription)
   LocalFree(blob->szDescription);
  if(blob->pbSalt)
   LocalFree(blob->pbSalt);
  if(blob->pbHmackKey)
   LocalFree(blob->pbHmackKey);
  if(blob->pbHmack2Key)
   LocalFree(blob->pbHmack2Key);
  if(blob->pbData)
   LocalFree(blob->pbData);
  if(blob->pbSign)
   LocalFree(blob->pbSign);
  LocalFree(blob);
 }
}
