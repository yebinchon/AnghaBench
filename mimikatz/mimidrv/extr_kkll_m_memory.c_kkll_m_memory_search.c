
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int SIZE_T ;
typedef scalar_t__ PUCHAR ;
typedef int NTSTATUS ;


 scalar_t__ RtlEqualMemory (int const*,scalar_t__,int ) ;
 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;

NTSTATUS kkll_m_memory_search(const PUCHAR adresseBase, const PUCHAR adresseMaxMin, const UCHAR *pattern, PUCHAR *addressePattern, SIZE_T longueur)
{
 for(*addressePattern = adresseBase; (adresseMaxMin > adresseBase) ? (*addressePattern <= adresseMaxMin) : (*addressePattern >= adresseMaxMin); *addressePattern += (adresseMaxMin > adresseBase) ? 1 : -1)
  if(RtlEqualMemory(pattern, *addressePattern, longueur))
   return STATUS_SUCCESS;
 *addressePattern = ((void*)0);
 return STATUS_NOT_FOUND;
}
