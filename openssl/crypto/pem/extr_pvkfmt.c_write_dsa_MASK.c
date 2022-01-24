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
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC5(unsigned char **out, DSA *dsa, int ispub)
{
    int nbyte;
    const BIGNUM *p = NULL, *q = NULL, *g = NULL;
    const BIGNUM *pub_key = NULL, *priv_key = NULL;

    FUNC2(dsa, &p, &q, &g);
    FUNC1(dsa, &pub_key, &priv_key);
    nbyte = FUNC0(p);
    FUNC4(out, p, nbyte);
    FUNC4(out, q, 20);
    FUNC4(out, g, nbyte);
    if (ispub)
        FUNC4(out, pub_key, nbyte);
    else
        FUNC4(out, priv_key, 20);
    /* Set "invalid" for seed structure values */
    FUNC3(*out, 0xff, 24);
    *out += 24;
    return;
}