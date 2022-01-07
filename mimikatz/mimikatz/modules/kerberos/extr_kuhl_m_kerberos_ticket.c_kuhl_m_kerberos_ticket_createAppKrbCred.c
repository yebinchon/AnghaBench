
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int bv_len; int bv_val; } ;
struct TYPE_10__ {int Length; int Value; } ;
struct TYPE_9__ {int Length; int Value; } ;
struct TYPE_11__ {int ServiceName; int DomainName; int RenewUntil; int EndTime; int StartTime; int TicketFlags; int ClientName; int AltTargetDomainName; TYPE_2__ Key; int KeyType; TYPE_1__ Ticket; int TicketKvno; int TicketEncType; } ;
typedef TYPE_3__* PKIWI_KERBEROS_TICKET ;
typedef TYPE_4__* PBERVAL ;
typedef int BerElement ;
typedef int BOOL ;


 int DIRTY_ASN1_ID_SEQUENCE ;
 int ID_APP_ENCKRBCREDPART ;
 int ID_APP_KRB_CRED ;
 int ID_APP_TICKET ;
 int ID_CTX_ENCKRBCREDPART_TICKET_INFO ;
 int ID_CTX_KRBCREDINFO_ENDTIME ;
 int ID_CTX_KRBCREDINFO_FLAGS ;
 int ID_CTX_KRBCREDINFO_KEY ;
 int ID_CTX_KRBCREDINFO_PNAME ;
 int ID_CTX_KRBCREDINFO_PREALM ;
 int ID_CTX_KRBCREDINFO_RENEW_TILL ;
 int ID_CTX_KRBCREDINFO_SNAME ;
 int ID_CTX_KRBCREDINFO_SREAL ;
 int ID_CTX_KRBCREDINFO_STARTTIME ;
 int ID_CTX_KRB_CRED_ENC_PART ;
 int ID_CTX_KRB_CRED_MSG_TYPE ;
 int ID_CTX_KRB_CRED_PVNO ;
 int ID_CTX_KRB_CRED_TICKETS ;
 int ID_CTX_TICKET_ENC_PART ;
 int ID_CTX_TICKET_REALM ;
 int ID_CTX_TICKET_SNAME ;
 int ID_CTX_TICKET_TKT_VNO ;
 int KERBEROS_VERSION ;
 int KERB_ETYPE_NULL ;
 int LBER_USE_DER ;
 int MAKE_APP_TAG (int ) ;
 int MAKE_CTX_TAG (int ) ;
 int * ber_alloc_t (int ) ;
 int ber_bvfree (TYPE_4__*) ;
 scalar_t__ ber_flatten (int *,TYPE_4__**) ;
 int ber_free (int *,int) ;
 int ber_printf (int *,char*,...) ;
 int kuhl_m_kerberos_ticket_createSequenceEncryptedData (int *,int ,int ,int ,int ) ;
 int kuhl_m_kerberos_ticket_createSequenceEncryptionKey (int *,int ,int ,int ) ;
 int kuhl_m_kerberos_ticket_createSequencePrimaryName (int *,int ) ;
 int kull_m_asn1_BitStringFromULONG (int *,int ) ;
 int kull_m_asn1_GenString (int *,int *) ;
 int kull_m_asn1_GenTime (int *,int *) ;

PBERVAL kuhl_m_kerberos_ticket_createAppKrbCred(PKIWI_KERBEROS_TICKET ticket, BOOL valueIsTicket)
{
 BerElement *pBer, *pBerApp;
 PBERVAL pBerVal = ((void*)0), pBerVallApp = ((void*)0);
 if(pBer = ber_alloc_t(LBER_USE_DER))
 {
  ber_printf(pBer, "t{{t{i}t{i}t{", MAKE_APP_TAG(ID_APP_KRB_CRED), MAKE_CTX_TAG(ID_CTX_KRB_CRED_PVNO), KERBEROS_VERSION, MAKE_CTX_TAG(ID_CTX_KRB_CRED_MSG_TYPE), ID_APP_KRB_CRED, MAKE_CTX_TAG(ID_CTX_KRB_CRED_TICKETS));
  if(!valueIsTicket)
  {
   ber_printf(pBer, "{t{{t{i}t{", MAKE_APP_TAG(ID_APP_TICKET), MAKE_CTX_TAG(ID_CTX_TICKET_TKT_VNO), KERBEROS_VERSION, MAKE_CTX_TAG(ID_CTX_TICKET_REALM));
   kull_m_asn1_GenString(pBer, &ticket->DomainName);
   ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_TICKET_SNAME));
   kuhl_m_kerberos_ticket_createSequencePrimaryName(pBer, ticket->ServiceName);
   ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_TICKET_ENC_PART));
   kuhl_m_kerberos_ticket_createSequenceEncryptedData(pBer, ticket->TicketEncType, ticket->TicketKvno, ticket->Ticket.Value, ticket->Ticket.Length);
   ber_printf(pBer, "}}}}");
  }
  else ber_printf(pBer, "to", DIRTY_ASN1_ID_SEQUENCE, ticket->Ticket.Value, ticket->Ticket.Length);
  ber_printf(pBer, "}t{", MAKE_CTX_TAG(ID_CTX_KRB_CRED_ENC_PART));
  if(pBerApp = ber_alloc_t(LBER_USE_DER))
  {
   ber_printf(pBerApp, "t{{t{{{t{", MAKE_APP_TAG(ID_APP_ENCKRBCREDPART), MAKE_CTX_TAG(ID_CTX_ENCKRBCREDPART_TICKET_INFO), MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_KEY));
   kuhl_m_kerberos_ticket_createSequenceEncryptionKey(pBerApp, ticket->KeyType, ticket->Key.Value, ticket->Key.Length);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_PREALM));
   kull_m_asn1_GenString(pBerApp, &ticket->AltTargetDomainName);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_PNAME));
   kuhl_m_kerberos_ticket_createSequencePrimaryName(pBerApp, ticket->ClientName);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_FLAGS));
   kull_m_asn1_BitStringFromULONG(pBerApp, ticket->TicketFlags);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_STARTTIME));
   kull_m_asn1_GenTime(pBerApp, &ticket->StartTime);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_ENDTIME));
   kull_m_asn1_GenTime(pBerApp, &ticket->EndTime);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_RENEW_TILL));
   kull_m_asn1_GenTime(pBerApp, &ticket->RenewUntil);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_SREAL));
   kull_m_asn1_GenString(pBerApp, &ticket->DomainName);
   ber_printf(pBerApp, "}t{", MAKE_CTX_TAG(ID_CTX_KRBCREDINFO_SNAME));
   kuhl_m_kerberos_ticket_createSequencePrimaryName(pBerApp, ticket->ServiceName);
   ber_printf(pBerApp, "}}}}}}");

   if(ber_flatten(pBerApp, &pBerVallApp) >= 0)
    kuhl_m_kerberos_ticket_createSequenceEncryptedData(pBer, KERB_ETYPE_NULL, 0, pBerVallApp->bv_val, pBerVallApp->bv_len);
   ber_free(pBerApp, 1);
  }
  ber_printf(pBer, "}}}");
  ber_flatten(pBer, &pBerVal);
  if(pBerVallApp)
   ber_bvfree(pBerVallApp);
  ber_free(pBer, 1);
 }
 return pBerVal;
}
