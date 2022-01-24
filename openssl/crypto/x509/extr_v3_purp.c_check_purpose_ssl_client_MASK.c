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
typedef  int /*<<< orphan*/  X509_PURPOSE ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int KU_DIGITAL_SIGNATURE ; 
 int KU_KEY_AGREEMENT ; 
 int /*<<< orphan*/  NS_SSL_CLIENT ; 
 int /*<<< orphan*/  XKU_SSL_CLIENT ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const X509_PURPOSE *xp, const X509 *x,
                                    int ca)
{
    if (FUNC3(x, XKU_SSL_CLIENT))
        return 0;
    if (ca)
        return FUNC0(x);
    /* We need to do digital signatures or key agreement */
    if (FUNC1(x, KU_DIGITAL_SIGNATURE | KU_KEY_AGREEMENT))
        return 0;
    /* nsCertType if present should allow SSL client use */
    if (FUNC2(x, NS_SSL_CLIENT))
        return 0;
    return 1;
}