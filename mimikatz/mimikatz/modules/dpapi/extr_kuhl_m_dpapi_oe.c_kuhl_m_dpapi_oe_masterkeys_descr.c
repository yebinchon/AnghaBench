
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Flink; } ;
struct TYPE_5__ {scalar_t__ Flink; } ;
struct TYPE_6__ {TYPE_1__ navigator; } ;
typedef TYPE_2__* PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;


 TYPE_4__ gDPAPI_Masterkeys ;
 int kuhl_m_dpapi_oe_masterkey_descr (TYPE_2__*) ;

void kuhl_m_dpapi_oe_masterkeys_descr()
{
 PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY entry;
 for(entry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) gDPAPI_Masterkeys.Flink; entry != (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) &gDPAPI_Masterkeys; entry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) entry->navigator.Flink)
  kuhl_m_dpapi_oe_masterkey_descr(entry);
}
