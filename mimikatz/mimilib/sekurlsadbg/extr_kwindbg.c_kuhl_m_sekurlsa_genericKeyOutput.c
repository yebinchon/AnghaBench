
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int type; int cbData; int pbData; } ;
typedef TYPE_1__* PKIWI_CREDENTIAL_KEY ;






 int dprintf (char*,...) ;
 int kull_m_string_dprintf_hex (int ,int ,int ) ;

VOID kuhl_m_sekurlsa_genericKeyOutput(PKIWI_CREDENTIAL_KEY key)
{
 switch(key->type)
 {
 case 130:
  dprintf("\n\t * NTLM     : ");
  break;
 case 128:
  dprintf("\n\t * SHA1     : ");
  break;
 case 129:
  dprintf("\n\t * RootKey  : ");
  break;
 case 131:
  dprintf("\n\t * DPAPI    : ");
  break;
 default:
  dprintf("\n\t * %08x : ", key->type);
 }
 kull_m_string_dprintf_hex(key->pbData, key->cbData, 0);
}
