
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int bv_len; int bv_val; } ;
struct TYPE_8__ {int Length; int Value; } ;
struct TYPE_9__ {int RenewUntil; int EndTime; int StartTime; int ClientName; int AltTargetDomainName; TYPE_1__ Key; int KeyType; int TicketFlags; } ;
typedef TYPE_2__* PKIWI_KERBEROS_TICKET ;
typedef TYPE_3__* PBERVAL ;
typedef scalar_t__ LPCVOID ;
typedef int DWORD ;
typedef int BerElement ;


 int ID_APP_ENCTICKETPART ;
 int ID_AUTHDATA_AD_IF_RELEVANT ;
 int ID_AUTHDATA_AD_WIN2K_PAC ;
 int ID_CTX_AUTHORIZATIONDATA_AD_DATA ;
 int ID_CTX_AUTHORIZATIONDATA_AD_TYPE ;
 int ID_CTX_ENCTICKETPART_AUTHORIZATION_DATA ;
 int ID_CTX_ENCTICKETPART_AUTHTIME ;
 int ID_CTX_ENCTICKETPART_CNAME ;
 int ID_CTX_ENCTICKETPART_CREALM ;
 int ID_CTX_ENCTICKETPART_ENDTIME ;
 int ID_CTX_ENCTICKETPART_FLAGS ;
 int ID_CTX_ENCTICKETPART_KEY ;
 int ID_CTX_ENCTICKETPART_RENEW_TILL ;
 int ID_CTX_ENCTICKETPART_STARTTIME ;
 int ID_CTX_ENCTICKETPART_TRANSITED ;
 int ID_CTX_TRANSITEDENCODING_CONTENTS ;
 int ID_CTX_TRANSITEDENCODING_TR_TYPE ;
 int LBER_USE_DER ;
 int MAKE_APP_TAG (int ) ;
 int MAKE_CTX_TAG (int ) ;
 int * ber_alloc_t (int ) ;
 int ber_bvfree (TYPE_3__*) ;
 scalar_t__ ber_flatten (int *,TYPE_3__**) ;
 int ber_free (int *,int) ;
 int ber_printf (int *,char*,...) ;
 int kuhl_m_kerberos_ticket_createSequenceEncryptionKey (int *,int ,int ,int ) ;
 int kuhl_m_kerberos_ticket_createSequencePrimaryName (int *,int ) ;
 int kull_m_asn1_BitStringFromULONG (int *,int ) ;
 int kull_m_asn1_GenString (int *,int *) ;
 int kull_m_asn1_GenTime (int *,int *) ;

PBERVAL kuhl_m_kerberos_ticket_createAppEncTicketPart(PKIWI_KERBEROS_TICKET ticket, LPCVOID PacAuthData, DWORD PacAuthDataSize)
{
 BerElement *pBer, *pBerPac;
 PBERVAL pBerVal = ((void*)0), pBerValPac = ((void*)0);
 if(pBer = ber_alloc_t(LBER_USE_DER))
 {
  ber_printf(pBer, "t{{t{", MAKE_APP_TAG(ID_APP_ENCTICKETPART), MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_FLAGS));
  kull_m_asn1_BitStringFromULONG(pBer, ticket->TicketFlags);
  ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_KEY));
  kuhl_m_kerberos_ticket_createSequenceEncryptionKey(pBer, ticket->KeyType, ticket->Key.Value, ticket->Key.Length);
  ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_CREALM));
  kull_m_asn1_GenString(pBer, &ticket->AltTargetDomainName);
  ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_CNAME));
  kuhl_m_kerberos_ticket_createSequencePrimaryName(pBer, ticket->ClientName);
  ber_printf(pBer, "}t{{t{i}t{o}}}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_TRANSITED), MAKE_CTX_TAG(ID_CTX_TRANSITEDENCODING_TR_TYPE), 0, MAKE_CTX_TAG(ID_CTX_TRANSITEDENCODING_CONTENTS), ((void*)0), 0, MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_AUTHTIME));
  kull_m_asn1_GenTime(pBer, &ticket->StartTime);
  ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_STARTTIME));
  kull_m_asn1_GenTime(pBer, &ticket->StartTime);
  ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_ENDTIME));
  kull_m_asn1_GenTime(pBer, &ticket->EndTime);
  ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_RENEW_TILL));
  kull_m_asn1_GenTime(pBer, &ticket->RenewUntil);
  ber_printf(pBer, "}");
  if(PacAuthData && PacAuthDataSize)
  {
   ber_printf(pBer, "t{{{t{i}t{", MAKE_CTX_TAG(ID_CTX_ENCTICKETPART_AUTHORIZATION_DATA), MAKE_CTX_TAG(ID_CTX_AUTHORIZATIONDATA_AD_TYPE), ID_AUTHDATA_AD_IF_RELEVANT, MAKE_CTX_TAG(ID_CTX_AUTHORIZATIONDATA_AD_DATA));
   if(pBerPac = ber_alloc_t(LBER_USE_DER))
   {
    ber_printf(pBerPac, "{{t{i}t{o}}}", MAKE_CTX_TAG(ID_CTX_AUTHORIZATIONDATA_AD_TYPE), ID_AUTHDATA_AD_WIN2K_PAC, MAKE_CTX_TAG(ID_CTX_AUTHORIZATIONDATA_AD_DATA), PacAuthData, PacAuthDataSize);
    if(ber_flatten(pBerPac, &pBerValPac) >= 0)
     ber_printf(pBer, "o", pBerValPac->bv_val, pBerValPac->bv_len);
    ber_free(pBerPac, 1);
   }
   ber_printf(pBer, "}}}}");
  }
  ber_printf(pBer, "}}");
  ber_flatten(pBer, &pBerVal);
  if(pBerValPac)
   ber_bvfree(pBerValPac);
  ber_free(pBer, 1);
 }
 return pBerVal;
}
