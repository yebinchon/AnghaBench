
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;
typedef int ASN1FreeFun_t ;


 int ASN1FLAGS_NOASSERT ;
 int ASN1_BER_RULE_DER ;
 int ASN1_CreateDecoder (scalar_t__,int **,int *,int ,int *) ;
 int ASN1_CreateEncoder (scalar_t__,int **,int *,int ,int *) ;
 scalar_t__ ASN1_CreateModule (int ,int ,int ,int,scalar_t__,scalar_t__,int const*,int ,char) ;
 scalar_t__ ASN1_FAILED (int) ;
 int ASN1_THIS_VERSION ;
 int * ASN1dec ;
 int * ASN1enc ;
 int FALSE ;
 int PRINT_ERROR (char*,...) ;
 scalar_t__ hASN1Module ;
 scalar_t__ kull_m_asn1_encdecfreefntab ;
 int kull_m_asn1_sizetab ;
 int kull_m_asn1_term () ;

BOOL kull_m_asn1_init()
{
 BOOL status = FALSE;
 int ret;
 if(hASN1Module = ASN1_CreateModule(ASN1_THIS_VERSION, ASN1_BER_RULE_DER, ASN1FLAGS_NOASSERT, 1, kull_m_asn1_encdecfreefntab, kull_m_asn1_encdecfreefntab, (const ASN1FreeFun_t *) kull_m_asn1_encdecfreefntab, kull_m_asn1_sizetab, 'iwik'))
 {
  ret = ASN1_CreateEncoder(hASN1Module, &ASN1enc, ((void*)0), 0, ((void*)0));
  if(ASN1_FAILED(ret))
  {
   PRINT_ERROR(L"ASN1_CreateEncoder: %i\n", ret);
   ASN1enc = ((void*)0);
  }
  else
  {
   ret = ASN1_CreateDecoder(hASN1Module, &ASN1dec, ((void*)0), 0, ((void*)0));
   if(ASN1_FAILED(ret))
   {
    PRINT_ERROR(L"ASN1_CreateDecoder: %i\n", ret);
    ASN1dec = ((void*)0);
   }
  }
 }
 else PRINT_ERROR(L"ASN1_CreateModule\n");

 status = hASN1Module && ASN1enc && ASN1dec;
 if(!status)
  kull_m_asn1_term();
 return status;
}
