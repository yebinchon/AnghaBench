#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_SIG ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_5__ {int /*<<< orphan*/ * shkeybag; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ PKCS12_SAFEBAG ;

/* Variables and functions */
 scalar_t__ NID_pkcs8ShroudedKeyBag ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC7(PKCS12_SAFEBAG *bag, const char *oldpass,
                       const char *newpass)
{
    PKCS8_PRIV_KEY_INFO *p8;
    X509_SIG *p8new;
    int p8_nid, p8_saltlen, p8_iter;
    const X509_ALGOR *shalg;

    if (FUNC0(bag) != NID_pkcs8ShroudedKeyBag)
        return 1;

    if ((p8 = FUNC2(bag->value.shkeybag, oldpass, -1)) == NULL)
        return 0;
    FUNC5(bag->value.shkeybag, &shalg, NULL);
    if (!FUNC6(shalg, &p8_nid, &p8_iter, &p8_saltlen))
        return 0;
    p8new = FUNC3(p8_nid, NULL, newpass, -1, NULL, p8_saltlen,
                          p8_iter, p8);
    FUNC1(p8);
    if (p8new == NULL)
        return 0;
    FUNC4(bag->value.shkeybag);
    bag->value.shkeybag = p8new;
    return 1;
}