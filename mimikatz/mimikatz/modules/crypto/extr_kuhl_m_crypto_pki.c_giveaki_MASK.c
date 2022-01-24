#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {int member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_20__ {TYPE_4__ member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;
struct TYPE_19__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  pszObjId; int /*<<< orphan*/  fCritical; } ;
struct TYPE_13__ {int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_18__ {TYPE_1__ PublicKey; } ;
struct TYPE_17__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_5__ SHA_DIGEST ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  TYPE_6__* PCERT_PUBLIC_KEY_INFO ;
typedef  TYPE_7__* PCERT_EXTENSION ;
typedef  TYPE_8__ CERT_AUTHORITY_KEY_ID2_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szOID_AUTHORITY_KEY_IDENTIFIER2 ; 

BOOL FUNC4(PCERT_EXTENSION pCertExtension, PCERT_PUBLIC_KEY_INFO info)
{
	SHA_CTX ctx;
	SHA_DIGEST dgst;
	CERT_AUTHORITY_KEY_ID2_INFO ainfo = {{sizeof(dgst.digest), dgst.digest}, {0, NULL}, {0, NULL}};
	FUNC1(&ctx);
	FUNC2(&ctx, info->PublicKey.pbData, info->PublicKey.cbData);
	FUNC0(&ctx, &dgst);
	pCertExtension->pszObjId = szOID_AUTHORITY_KEY_IDENTIFIER2;
	pCertExtension->fCritical = FALSE;
	return FUNC3(pCertExtension->pszObjId, &ainfo, &pCertExtension->Value);
}