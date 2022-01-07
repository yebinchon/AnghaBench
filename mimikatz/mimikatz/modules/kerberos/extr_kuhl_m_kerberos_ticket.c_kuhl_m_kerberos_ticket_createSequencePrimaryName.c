
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ber_int_t ;
typedef size_t USHORT ;
struct TYPE_3__ {size_t NameCount; int * Names; int NameType; } ;
typedef TYPE_1__* PKERB_EXTERNAL_NAME ;
typedef int BerElement ;


 int ID_CTX_PRINCIPALNAME_NAME_STRING ;
 int ID_CTX_PRINCIPALNAME_NAME_TYPE ;
 int MAKE_CTX_TAG (int ) ;
 int ber_printf (int *,char*,...) ;
 int kull_m_asn1_GenString (int *,int *) ;

void kuhl_m_kerberos_ticket_createSequencePrimaryName(BerElement * pBer, PKERB_EXTERNAL_NAME name)
{
 ber_int_t nameType = name->NameType;
 USHORT i;
 ber_printf(pBer, "{t{i}t{{", MAKE_CTX_TAG(ID_CTX_PRINCIPALNAME_NAME_TYPE), nameType, MAKE_CTX_TAG(ID_CTX_PRINCIPALNAME_NAME_STRING));
 for(i = 0; i < name->NameCount; i++)
  kull_m_asn1_GenString(pBer, &name->Names[i]);
 ber_printf(pBer, "}}}");
}
