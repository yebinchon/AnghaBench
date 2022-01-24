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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  genstr ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC7(uint64_t timestamp, BIO *out)
{
    ASN1_GENERALIZEDTIME *gen = FUNC2();
    char genstr[20];

    if (gen == NULL)
        return;
    FUNC0(gen, (time_t)0,
                             (int)(timestamp / 86400000),
                             (timestamp % 86400000) / 1000);
    /*
     * Note GeneralizedTime from ASN1_GENERALIZETIME_adj is always 15
     * characters long with a final Z. Update it with fractional seconds.
     */
    FUNC6(genstr, sizeof(genstr), "%.14s.%03dZ",
                 FUNC5(gen), (unsigned int)(timestamp % 1000));
    if (FUNC4(gen, genstr))
        FUNC3(out, gen);
    FUNC1(gen);
}