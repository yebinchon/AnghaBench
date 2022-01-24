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
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_FAILURE_OBTAINING_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (unsigned char*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ **,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC6(ASN1_OCTET_STRING **tgt,
                                  const ASN1_OCTET_STRING *src, size_t len)
{
    unsigned char *bytes = NULL;
    int res = 0;

    if (src == NULL) { /* generate a random value if src == NULL */
        if ((bytes = FUNC2(len)) == NULL)
            goto err;
        if (FUNC3(bytes, len) <= 0) {
            FUNC0(0, CMP_R_FAILURE_OBTAINING_RANDOM);
            goto err;
        }
        res = FUNC5(tgt, bytes, len);
    } else {
        res = FUNC4(tgt, src);
    }

 err:
    FUNC1(bytes);
    return res;
}