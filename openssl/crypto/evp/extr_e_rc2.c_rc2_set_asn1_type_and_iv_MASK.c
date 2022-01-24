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
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,long,unsigned char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    long num;
    int i = 0, j;

    if (type != NULL) {
        num = FUNC3(c);
        j = FUNC1(c);
        i = FUNC0(type, num,
                                          (unsigned char *)FUNC2(c),
                                          j);
    }
    return i;
}