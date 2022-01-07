
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ isNewKey; int guid; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__* PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;


 int kprintf (char*,...) ;
 int kull_m_string_displayGUID (int *) ;

void kuhl_m_dpapi_oe_domainkey_descr(PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY entry)
{
 if(entry)
 {
  kprintf(L"GUID:");
  kull_m_string_displayGUID(&entry->data.guid);
  kprintf(L";TYPE:%s\n", entry->data.isNewKey ? L"RSA" : L"LEGACY");
 }
}
