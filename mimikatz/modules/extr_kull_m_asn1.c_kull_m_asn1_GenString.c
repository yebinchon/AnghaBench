
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Length; int Buffer; } ;
typedef int PCUNICODE_STRING ;
typedef int BerElement ;
typedef TYPE_1__ ANSI_STRING ;


 int DIRTY_ASN1_ID_GENERAL_STRING ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlFreeAnsiString (TYPE_1__*) ;
 int RtlUnicodeStringToAnsiString (TYPE_1__*,int ,int ) ;
 int TRUE ;
 int ber_printf (int *,char*,int ,int ,int ) ;

void kull_m_asn1_GenString(BerElement * pBer, PCUNICODE_STRING String)
{
 ANSI_STRING aString;
 if(NT_SUCCESS(RtlUnicodeStringToAnsiString(&aString, String, TRUE)))
 {
  ber_printf(pBer, "to", DIRTY_ASN1_ID_GENERAL_STRING, aString.Buffer, aString.Length);
  RtlFreeAnsiString(&aString);
 }
}
