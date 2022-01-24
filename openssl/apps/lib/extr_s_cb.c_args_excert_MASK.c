#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum range { ____Placeholder_range } range ;
struct TYPE_5__ {int build_chain; int /*<<< orphan*/  keyform; int /*<<< orphan*/  certform; int /*<<< orphan*/ * chainfile; int /*<<< orphan*/ * keyfile; int /*<<< orphan*/ * certfile; } ;
typedef  TYPE_1__ SSL_EXCERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_FMT_PEMDER ; 
#define  OPT_X_CERT 135 
#define  OPT_X_CERTFORM 134 
#define  OPT_X_CHAIN 133 
#define  OPT_X_CHAIN_BUILD 132 
#define  OPT_X_KEY 131 
#define  OPT_X_KEYFORM 130 
#define  OPT_X__FIRST 129 
#define  OPT_X__LAST 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 

int FUNC8(int opt, SSL_EXCERT **pexc)
{
    SSL_EXCERT *exc = *pexc;

    FUNC2(opt > OPT_X__FIRST);
    FUNC2(opt < OPT_X__LAST);

    if (exc == NULL) {
        if (!FUNC7(&exc)) {
            FUNC0(bio_err, " %s: Error initialising xcert\n",
                       FUNC5());
            goto err;
        }
        *pexc = exc;
    }

    switch ((enum range)opt) {
    case OPT_X__FIRST:
    case OPT_X__LAST:
        return 0;
    case OPT_X_CERT:
        if (exc->certfile != NULL && !FUNC7(&exc)) {
            FUNC0(bio_err, "%s: Error adding xcert\n", FUNC5());
            goto err;
        }
        *pexc = exc;
        exc->certfile = FUNC3();
        break;
    case OPT_X_KEY:
        if (exc->keyfile != NULL) {
            FUNC0(bio_err, "%s: Key already specified\n", FUNC5());
            goto err;
        }
        exc->keyfile = FUNC3();
        break;
    case OPT_X_CHAIN:
        if (exc->chainfile != NULL) {
            FUNC0(bio_err, "%s: Chain already specified\n",
                       FUNC5());
            goto err;
        }
        exc->chainfile = FUNC3();
        break;
    case OPT_X_CHAIN_BUILD:
        exc->build_chain = 1;
        break;
    case OPT_X_CERTFORM:
        if (!FUNC4(FUNC3(), OPT_FMT_PEMDER, &exc->certform))
            return 0;
        break;
    case OPT_X_KEYFORM:
        if (!FUNC4(FUNC3(), OPT_FMT_PEMDER, &exc->keyform))
            return 0;
        break;
    }
    return 1;

 err:
    FUNC1(bio_err);
    FUNC6(exc);
    *pexc = NULL;
    return 0;
}