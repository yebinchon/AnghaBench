
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int * md4protectedhash; int * sha1hash; int * md4hash; int sid; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef scalar_t__ LPCGUID ;
typedef int BOOL ;


 int FALSE ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4 ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p ;
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 ;
 int kuhl_m_dpapi_oe_credential_add (int ,scalar_t__,int *,int *,int *,int *) ;

BOOL kuhl_m_dpapi_oe_credential_copyEntryWithNewGuid(PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entry, LPCGUID guid)
{
 BOOL status = FALSE;
 if(entry && guid && !(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID))
  status = kuhl_m_dpapi_oe_credential_add(entry->data.sid, guid, (entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4) ? entry->data.md4hash : ((void*)0), (entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1) ? entry->data.sha1hash : ((void*)0), (entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p) ? entry->data.md4protectedhash : ((void*)0), ((void*)0));
 return status;
}
