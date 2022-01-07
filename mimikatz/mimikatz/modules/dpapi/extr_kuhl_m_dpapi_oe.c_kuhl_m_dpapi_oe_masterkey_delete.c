
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Blink; scalar_t__ Flink; } ;
struct TYPE_10__ {TYPE_1__ navigator; } ;
struct TYPE_8__ {scalar_t__ Blink; scalar_t__ Flink; } ;
struct TYPE_9__ {TYPE_2__ navigator; } ;
typedef TYPE_3__* PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef TYPE_4__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;


 int LocalFree (TYPE_3__*) ;

void kuhl_m_dpapi_oe_masterkey_delete(PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY entry)
{
 if(entry)
 {
  ((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Blink)->navigator.Flink = entry->navigator.Flink;
  ((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Flink)->navigator.Blink = entry->navigator.Blink;
  LocalFree(entry);
 }
}
