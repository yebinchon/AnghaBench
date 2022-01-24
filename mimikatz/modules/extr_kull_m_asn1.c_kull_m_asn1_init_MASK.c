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
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  ASN1FreeFun_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1FLAGS_NOASSERT ; 
 int /*<<< orphan*/  ASN1_BER_RULE_DER ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  ASN1_THIS_VERSION ; 
 int /*<<< orphan*/ * ASN1dec ; 
 int /*<<< orphan*/ * ASN1enc ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ hASN1Module ; 
 scalar_t__ kull_m_asn1_encdecfreefntab ; 
 int /*<<< orphan*/  kull_m_asn1_sizetab ; 
 int /*<<< orphan*/  FUNC5 () ; 

BOOL FUNC6()
{
	BOOL status = FALSE;
	int ret;
	if((hASN1Module = FUNC2(ASN1_THIS_VERSION, ASN1_BER_RULE_DER, ASN1FLAGS_NOASSERT, 1, kull_m_asn1_encdecfreefntab, kull_m_asn1_encdecfreefntab, (const ASN1FreeFun_t *) kull_m_asn1_encdecfreefntab, kull_m_asn1_sizetab, 'iwik')))
	{
		ret = FUNC1(hASN1Module, &ASN1enc, NULL, 0, NULL);
		if(FUNC3(ret))
		{
			FUNC4(L"ASN1_CreateEncoder: %i\n", ret);
			ASN1enc = NULL;
		}
		else
		{
			ret = FUNC0(hASN1Module, &ASN1dec, NULL, 0, NULL);
			if(FUNC3(ret))
			{
				FUNC4(L"ASN1_CreateDecoder: %i\n", ret);
				ASN1dec = NULL;
			}
		}
	}
	else FUNC4(L"ASN1_CreateModule\n");

	status = hASN1Module && ASN1enc && ASN1dec;
	if(!status)
		FUNC5();
	return status;
}