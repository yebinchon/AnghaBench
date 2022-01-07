
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_FreeEncoded (scalar_t__,void*) ;
 scalar_t__ ASN1enc ;

void kull_m_asn1_freeEnc(void *pBuf)
{
 if(ASN1enc && pBuf)
  ASN1_FreeEncoded(ASN1enc, pBuf);
}
