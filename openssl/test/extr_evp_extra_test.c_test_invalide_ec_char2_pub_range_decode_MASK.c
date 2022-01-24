#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ valid; int /*<<< orphan*/  len; int /*<<< orphan*/  der; } ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* ec_der_pub_keys ; 

__attribute__((used)) static int FUNC6(int id)
{
    int ret = 0;
    BIO *bio = NULL;
    EC_KEY *eckey = NULL;

    if (!FUNC3(bio = FUNC1(ec_der_pub_keys[id].der,
                                        ec_der_pub_keys[id].len)))
        goto err;
    eckey = FUNC5(bio, NULL);
    ret = (ec_der_pub_keys[id].valid && FUNC3(eckey))
          || FUNC4(eckey);
err:
    FUNC2(eckey);
    FUNC0(bio);
    return ret;
}