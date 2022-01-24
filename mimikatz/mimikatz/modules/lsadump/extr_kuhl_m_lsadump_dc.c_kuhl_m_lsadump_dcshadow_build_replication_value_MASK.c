#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int valCount; int /*<<< orphan*/ * pAVal; } ;
struct TYPE_7__ {int* pszValue; TYPE_2__* pAttribute; TYPE_1__ AttrVal; } ;
struct TYPE_6__ {int dwSyntax; scalar_t__ szAttributeName; } ;
typedef  TYPE_3__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  (* DCSHADOW_SYNTAX_ENCODER ) (int /*<<< orphan*/ *,int) ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  ATTRVAL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
#define  SYNTAX_DN 136 
#define  SYNTAX_GENERALIZED_TIME 135 
#define  SYNTAX_INTEGER 134 
#define  SYNTAX_LARGE_INTEGER 133 
#define  SYNTAX_NTSECURITYDESCRIPTOR 132 
#define  SYNTAX_OCTET_STRING 131 
#define  SYNTAX_OID 130 
#define  SYNTAX_SID 129 
#define  SYNTAX_UNICODE_STRING 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

BOOL FUNC13(PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE attribute)
{
	DWORD i;
	DCSHADOW_SYNTAX_ENCODER encoder = NULL;

	attribute->AttrVal.pAVal = (ATTRVAL*) FUNC0(sizeof(ATTRVAL) * attribute->AttrVal.valCount);
	if(!attribute->AttrVal.pAVal)
		return FALSE;
	
	if(attribute->pAttribute->szAttributeName)
	{
		if(!FUNC2(attribute->pAttribute->szAttributeName, L"supplementalCredentials"))
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials;
	}
	
	if(!encoder)
	{
		switch (attribute->pAttribute->dwSyntax)
		{
		case SYNTAX_UNICODE_STRING:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_unicode_string;
			break;
		case SYNTAX_OCTET_STRING:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_octet_string;
			break;
		case SYNTAX_DN:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_dn;
			break;
		case SYNTAX_INTEGER:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_dword;
			break;
		case SYNTAX_LARGE_INTEGER:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_large_integer;
			break;
		case SYNTAX_SID:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_sid;
			break;
		case SYNTAX_NTSECURITYDESCRIPTOR:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_security_descriptor;
			break;
		case SYNTAX_GENERALIZED_TIME:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_date;
			break;
		case SYNTAX_OID:
			encoder = kuhl_m_lsadump_dcshadow_build_replication_value_oid;
			break;
		default:
			FUNC1(L"Syntax for attribute %s not implemented (0x%x)", attribute->pAttribute->szAttributeName, attribute->pAttribute->dwSyntax);
			return FALSE;
		}
	}
	for(i = 0; i < attribute->AttrVal.valCount; i++)
	{
		if(!encoder(attribute->AttrVal.pAVal + i, attribute->pszValue[i]))
		{
			FUNC1(L"Unable to encode %s (%s)", attribute->pAttribute->szAttributeName, attribute->pszValue[i]);
			return FALSE;
		}
	}
	return TRUE;
}