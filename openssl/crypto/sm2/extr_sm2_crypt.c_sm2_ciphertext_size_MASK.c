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
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int FUNC0 (int,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  V_ASN1_INTEGER ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const EC_KEY *key, const EVP_MD *digest, size_t msg_len,
                        size_t *ct_size)
{
    const size_t field_size = FUNC3(FUNC1(key));
    const int md_size = FUNC2(digest);
    size_t sz;

    if (field_size == 0 || md_size < 0)
        return 0;

    /* Integer and string are simple type; set constructed = 0, means primitive and definite length encoding. */
    sz = 2 * FUNC0(0, field_size + 1, V_ASN1_INTEGER)
         + FUNC0(0, md_size, V_ASN1_OCTET_STRING)
         + FUNC0(0, msg_len, V_ASN1_OCTET_STRING);
    /* Sequence is structured type; set constructed = 1, means constructed and definite length encoding. */
    *ct_size = FUNC0(1, sz, V_ASN1_SEQUENCE);

    return 1;
}