
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1Free (void*) ;

void kull_m_asn1_freeDec(void *pBuf)
{
 if(pBuf)
  ASN1Free(pBuf);
}
