#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  NID_pkcs7_data ; 
 int /*<<< orphan*/  NID_pkcs9_contentType ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_OBJECT ; 

int FUNC3(PKCS7_SIGNER_INFO *si, ASN1_OBJECT *coid)
{
    if (FUNC2(si, NID_pkcs9_contentType))
        return 0;
    if (!coid)
        coid = FUNC0(NID_pkcs7_data);
    return FUNC1(si, NID_pkcs9_contentType,
                                      V_ASN1_OBJECT, coid);
}