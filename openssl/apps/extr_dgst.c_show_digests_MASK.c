#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct doall_dgst_digests {int n; int /*<<< orphan*/  bio; } ;
struct TYPE_3__ {scalar_t__* name; } ;
typedef  TYPE_1__ OBJ_NAME ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*,char*) ; 

__attribute__((used)) static void FUNC4(const OBJ_NAME *name, void *arg)
{
    struct doall_dgst_digests *dec = (struct doall_dgst_digests *)arg;
    const EVP_MD *md = NULL;

    /* Filter out signed digests (a.k.a signature algorithms) */
    if (FUNC3(name->name, "rsa") != NULL || FUNC3(name->name, "RSA") != NULL)
        return;

    if (!FUNC2((unsigned char)*name->name))
        return;

    /* Filter out message digests that we cannot use */
    md = FUNC1(name->name);
    if (md == NULL)
        return;

    FUNC0(dec->bio, "-%-25s", name->name);
    if (++dec->n == 3) {
        FUNC0(dec->bio, "\n");
        dec->n = 0;
    } else {
        FUNC0(dec->bio, " ");
    }
}