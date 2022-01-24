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
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int FUNC0 (void*,unsigned char**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,unsigned char*,unsigned int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 

int FUNC3(const ASN1_ITEM *it, const EVP_MD *type, void *asn,
                     unsigned char *md, unsigned int *len)
{
    int i;
    unsigned char *str = NULL;

    i = FUNC0(asn, &str, it);
    if (!str)
        return 0;

    if (!FUNC1(str, i, md, len, type, NULL)) {
        FUNC2(str);
        return 0;
    }
    FUNC2(str);
    return 1;
}