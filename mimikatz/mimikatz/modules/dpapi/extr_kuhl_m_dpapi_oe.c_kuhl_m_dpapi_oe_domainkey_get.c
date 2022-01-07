
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Flink; } ;
struct TYPE_7__ {int guid; } ;
struct TYPE_6__ {scalar_t__ Flink; } ;
struct TYPE_8__ {TYPE_2__ data; TYPE_1__ navigator; } ;
typedef TYPE_3__* PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;
typedef int LPCGUID ;


 scalar_t__ RtlEqualGuid (int ,int *) ;
 TYPE_5__ gDPAPI_Domainkeys ;

PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY kuhl_m_dpapi_oe_domainkey_get(LPCGUID guid)
{
 PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY entry;
 for(entry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) gDPAPI_Domainkeys.Flink; entry != (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) &gDPAPI_Domainkeys; entry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) entry->navigator.Flink)
  if(RtlEqualGuid(guid, &entry->data.guid))
   return entry;
 return ((void*)0);
}
