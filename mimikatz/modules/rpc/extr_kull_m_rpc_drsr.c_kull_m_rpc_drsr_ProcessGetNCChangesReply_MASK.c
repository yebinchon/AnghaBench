#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ pVal; } ;
struct TYPE_10__ {size_t attrCount; TYPE_2__* pAttr; } ;
struct TYPE_11__ {TYPE_3__ AttrBlock; } ;
struct TYPE_12__ {TYPE_4__ Entinf; struct TYPE_12__* pNextEntInf; } ;
struct TYPE_8__ {size_t valCount; TYPE_6__* pAVal; } ;
struct TYPE_9__ {scalar_t__ attrTyp; TYPE_1__ AttrVal; } ;
typedef  int /*<<< orphan*/  SCHEMA_PREFIX_TABLE ;
typedef  TYPE_5__ REPLENTINFLIST ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  scalar_t__ ATTRTYP ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__* kull_m_rpc_drsr_encrypted_oids ; 

BOOL FUNC4(SCHEMA_PREFIX_TABLE *prefixTable, REPLENTINFLIST *objects) // very partial, ofc
{
	ATTRTYP attSensitive[FUNC0(kull_m_rpc_drsr_encrypted_oids)];
	REPLENTINFLIST * pReplentinflist, *pNextReplentinflist = objects;
	DWORD i, j, k;

	for(i = 0; i < FUNC0(attSensitive); i++)
	{
		if(!FUNC2(prefixTable, kull_m_rpc_drsr_encrypted_oids[i], &attSensitive[i], FALSE))
		{
			FUNC1(L"Unable to MakeAttid for %S\n", kull_m_rpc_drsr_encrypted_oids[i]);
			return FALSE;
		}
	}
	
	while((pReplentinflist = pNextReplentinflist))
	{
		pNextReplentinflist = pReplentinflist->pNextEntInf;
		if(pReplentinflist->Entinf.AttrBlock.pAttr)
		{
			for(i = 0; i < pReplentinflist->Entinf.AttrBlock.attrCount; i++)
			{
				for(j = 0; j < FUNC0(attSensitive); j++)
				{
					if(attSensitive[j] == pReplentinflist->Entinf.AttrBlock.pAttr[i].attrTyp)
					{
						if(pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.pAVal)
							for(k = 0; k < pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.valCount; k++)
								if(pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.pAVal[k].pVal)
									if(!FUNC3(&pReplentinflist->Entinf.AttrBlock.pAttr[i].AttrVal.pAVal[k], NULL))
										return FALSE;
						break;
					}
				}
			}
		}
	}
	return TRUE;
}