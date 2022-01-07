
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_CloseDecoder (int *) ;
 int ASN1_CloseEncoder (int *) ;
 int ASN1_CloseModule (int *) ;
 int * ASN1dec ;
 int * ASN1enc ;
 int * hASN1Module ;

void kull_m_asn1_term()
{
 if(ASN1dec)
 {
  ASN1_CloseDecoder(ASN1dec);
  ASN1dec = ((void*)0);
 }
 if(ASN1enc)
 {
  ASN1_CloseEncoder(ASN1enc);
  ASN1enc = ((void*)0);
 }
 if(hASN1Module)
 {
  ASN1_CloseModule(hASN1Module);
  hASN1Module = ((void*)0);
 }
}
