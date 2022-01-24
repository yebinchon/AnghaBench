#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  chain; int /*<<< orphan*/ * chainfile; int /*<<< orphan*/ * key; int /*<<< orphan*/  certform; int /*<<< orphan*/ * certfile; int /*<<< orphan*/  keyform; int /*<<< orphan*/ * keyfile; int /*<<< orphan*/ * cert; struct TYPE_4__* next; } ;
typedef  TYPE_1__ SSL_EXCERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FORMAT_PEM ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(SSL_EXCERT **pexc)
{
    SSL_EXCERT *exc = *pexc;
    if (exc == NULL)
        return 1;
    /* If nothing in list, free and set to NULL */
    if (exc->certfile == NULL && exc->next == NULL) {
        FUNC4(exc);
        *pexc = NULL;
        return 1;
    }
    for (; exc; exc = exc->next) {
        if (exc->certfile == NULL) {
            FUNC0(bio_err, "Missing filename\n");
            return 0;
        }
        exc->cert = FUNC1(exc->certfile, exc->certform,
                              "Server Certificate");
        if (exc->cert == NULL)
            return 0;
        if (exc->keyfile != NULL) {
            exc->key = FUNC3(exc->keyfile, exc->keyform,
                                0, NULL, NULL, "Server Key");
        } else {
            exc->key = FUNC3(exc->certfile, exc->certform,
                                0, NULL, NULL, "Server Key");
        }
        if (exc->key == NULL)
            return 0;
        if (exc->chainfile != NULL) {
            if (!FUNC2(exc->chainfile, &exc->chain, FORMAT_PEM, NULL,
                            "Server Chain"))
                return 0;
        }
    }
    return 1;
}