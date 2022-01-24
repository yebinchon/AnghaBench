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
 int /*<<< orphan*/  PEM_F_DO_B2I ; 
 int /*<<< orphan*/  PEM_R_KEYBLOB_HEADER_PARSE_ERROR ; 
 int /*<<< orphan*/  PEM_R_KEYBLOB_TOO_SHORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char const**,unsigned int,int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char const**,unsigned int,int) ; 
 unsigned int FUNC3 (unsigned int,int,int) ; 
 scalar_t__ FUNC4 (unsigned char const**,unsigned int,unsigned int*,unsigned int*,int*,int*) ; 

__attribute__((used)) static EVP_PKEY *FUNC5(const unsigned char **in, unsigned int length,
                        int ispub)
{
    const unsigned char *p = *in;
    unsigned int bitlen, magic;
    int isdss;
    if (FUNC4(&p, length, &magic, &bitlen, &isdss, &ispub) <= 0) {
        FUNC0(PEM_F_DO_B2I, PEM_R_KEYBLOB_HEADER_PARSE_ERROR);
        return NULL;
    }
    length -= 16;
    if (length < FUNC3(bitlen, isdss, ispub)) {
        FUNC0(PEM_F_DO_B2I, PEM_R_KEYBLOB_TOO_SHORT);
        return NULL;
    }
    if (isdss)
        return FUNC1(&p, bitlen, ispub);
    else
        return FUNC2(&p, bitlen, ispub);
}