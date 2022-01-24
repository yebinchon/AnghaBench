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
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  NID_pkcs9_messageDigest ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 

int FUNC4(PKCS7_SIGNER_INFO *si,
                             const unsigned char *md, int mdlen)
{
    ASN1_OCTET_STRING *os;
    os = FUNC1();
    if (os == NULL)
        return 0;
    if (!FUNC2(os, md, mdlen)
        || !FUNC3(si, NID_pkcs9_messageDigest,
                                       V_ASN1_OCTET_STRING, os)) {
        FUNC0(os);
        return 0;
    }
    return 1;
}