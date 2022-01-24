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
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(const EVP_PKEY *pkey)
{
    int ecbits = FUNC0(pkey);
    if (ecbits >= 512)
        return 256;
    if (ecbits >= 384)
        return 192;
    if (ecbits >= 256)
        return 128;
    if (ecbits >= 224)
        return 112;
    if (ecbits >= 160)
        return 80;
    return ecbits / 2;
}