#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int is_verify; int is_oneshot; struct TYPE_9__* ctx; int /*<<< orphan*/  const* md; } ;
struct TYPE_8__ {int skip; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_2__ DIGESTSIGN_DATA ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 scalar_t__ NID_undef ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(EVP_TEST *t, const char *alg, int is_verify,
                                  int is_oneshot)
{
    const EVP_MD *md = NULL;
    DIGESTSIGN_DATA *mdat;

    if (FUNC7(alg, "NULL") != 0) {
        if ((md = FUNC1(alg)) == NULL) {
            /* If alg has an OID assume disabled algorithm */
            if (FUNC3(alg) != NID_undef || FUNC2(alg) != NID_undef) {
                t->skip = 1;
                return 1;
            }
            return 0;
        }
    }
    if (!FUNC6(mdat = FUNC5(sizeof(*mdat))))
        return 0;
    mdat->md = md;
    if (!FUNC6(mdat->ctx = FUNC0())) {
        FUNC4(mdat);
        return 0;
    }
    mdat->is_verify = is_verify;
    mdat->is_oneshot = is_oneshot;
    t->data = mdat;
    return 1;
}