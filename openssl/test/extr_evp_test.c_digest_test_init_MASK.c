#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * fetched_digest; int /*<<< orphan*/  const* digest; } ;
struct TYPE_6__ {int skip; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_2__ DIGEST_DATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 scalar_t__ NID_undef ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(EVP_TEST *t, const char *alg)
{
    DIGEST_DATA *mdat;
    const EVP_MD *digest;
    EVP_MD *fetched_digest;

    if ((digest = fetched_digest = FUNC0(NULL, alg, NULL)) == NULL
        && (digest = FUNC1(alg)) == NULL) {
        /* If alg has an OID assume disabled algorithm */
        if (FUNC3(alg) != NID_undef || FUNC2(alg) != NID_undef) {
            t->skip = 1;
            return 1;
        }
        return 0;
    }
    if (!FUNC6(mdat = FUNC4(sizeof(*mdat))))
        return 0;
    t->data = mdat;
    mdat->digest = digest;
    mdat->fetched_digest = fetched_digest;
    if (fetched_digest != NULL)
        FUNC5("%s is fetched", alg);
    return 1;
}