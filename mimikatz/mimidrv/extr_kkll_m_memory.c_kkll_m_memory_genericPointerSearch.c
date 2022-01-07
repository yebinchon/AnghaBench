
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int SIZE_T ;
typedef scalar_t__ PUCHAR ;
typedef scalar_t__* PLONG ;
typedef int NTSTATUS ;
typedef scalar_t__ LONG ;


 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_INVALID_HANDLE ;
 int kkll_m_memory_search (scalar_t__ const,scalar_t__ const,int const*,scalar_t__*,int ) ;

NTSTATUS kkll_m_memory_genericPointerSearch(PUCHAR *addressePointeur, const PUCHAR adresseBase, const PUCHAR adresseMaxMin, const UCHAR *pattern, SIZE_T longueur, LONG offsetTo)
{
 NTSTATUS status = kkll_m_memory_search(adresseBase, adresseMaxMin, pattern, addressePointeur, longueur);
 if(NT_SUCCESS(status))
 {
  *addressePointeur += offsetTo;






  if(!*addressePointeur)
   status = STATUS_INVALID_HANDLE;
 }
 return status;
}
