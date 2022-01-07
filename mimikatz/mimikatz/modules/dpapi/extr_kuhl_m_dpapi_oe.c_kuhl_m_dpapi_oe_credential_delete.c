
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sid; } ;
struct TYPE_7__ {scalar_t__ Blink; scalar_t__ Flink; } ;
struct TYPE_8__ {TYPE_1__ data; TYPE_2__ navigator; } ;
typedef TYPE_3__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;


 int LocalFree (TYPE_3__*) ;
 int free (scalar_t__) ;

void kuhl_m_dpapi_oe_credential_delete(PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entry)
{
 PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entryB = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Blink, entryF = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Flink;

 if(entry)
 {
  ((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Blink)->navigator.Flink = entry->navigator.Flink;
  ((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) entry->navigator.Flink)->navigator.Blink = entry->navigator.Blink;
  if(entry->data.sid)
   free(entry->data.sid);
  LocalFree(entry);
 }
}
