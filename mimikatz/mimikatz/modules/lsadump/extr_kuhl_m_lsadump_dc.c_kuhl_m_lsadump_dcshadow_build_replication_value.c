
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int valCount; int * pAVal; } ;
struct TYPE_7__ {int* pszValue; TYPE_2__* pAttribute; TYPE_1__ AttrVal; } ;
struct TYPE_6__ {int dwSyntax; scalar_t__ szAttributeName; } ;
typedef TYPE_3__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef size_t DWORD ;
typedef int (* DCSHADOW_SYNTAX_ENCODER ) (int *,int) ;
typedef int BOOL ;
typedef int ATTRVAL ;


 int FALSE ;
 scalar_t__ MIDL_user_allocate (int) ;
 int PRINT_ERROR (char*,scalar_t__,int) ;
 int TRUE ;
 int _wcsicmp (scalar_t__,char*) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_date (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_dn (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_dword (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_large_integer (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_octet_string (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_oid (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_security_descriptor (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_sid (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials (int *,int) ;
 int kuhl_m_lsadump_dcshadow_build_replication_value_unicode_string (int *,int) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value(PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE attribute)
{
 DWORD i;
 DCSHADOW_SYNTAX_ENCODER encoder = ((void*)0);

 attribute->AttrVal.pAVal = (ATTRVAL*) MIDL_user_allocate(sizeof(ATTRVAL) * attribute->AttrVal.valCount);
 if(!attribute->AttrVal.pAVal)
  return FALSE;

 if(attribute->pAttribute->szAttributeName)
 {
  if(!_wcsicmp(attribute->pAttribute->szAttributeName, L"supplementalCredentials"))
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials;
 }

 if(!encoder)
 {
  switch (attribute->pAttribute->dwSyntax)
  {
  case 128:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_unicode_string;
   break;
  case 131:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_octet_string;
   break;
  case 136:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_dn;
   break;
  case 134:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_dword;
   break;
  case 133:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_large_integer;
   break;
  case 129:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_sid;
   break;
  case 132:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_security_descriptor;
   break;
  case 135:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_date;
   break;
  case 130:
   encoder = kuhl_m_lsadump_dcshadow_build_replication_value_oid;
   break;
  default:
   PRINT_ERROR(L"Syntax for attribute %s not implemented (0x%x)", attribute->pAttribute->szAttributeName, attribute->pAttribute->dwSyntax);
   return FALSE;
  }
 }
 for(i = 0; i < attribute->AttrVal.valCount; i++)
 {
  if(!encoder(attribute->AttrVal.pAVal + i, attribute->pszValue[i]))
  {
   PRINT_ERROR(L"Unable to encode %s (%s)", attribute->pAttribute->szAttributeName, attribute->pszValue[i]);
   return FALSE;
  }
 }
 return TRUE;
}
