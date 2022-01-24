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
struct TYPE_5__ {int authenticated; int /*<<< orphan*/ * sasl_conn; } ;
typedef  TYPE_1__ conn ;
struct TYPE_6__ {scalar_t__ verbose; int /*<<< orphan*/  sasl; } ;

/* Variables and functions */
 int SASL_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__* my_sasl_hostname ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_2__ settings ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(conn *c) {
    FUNC0(c);
    /* should something else be returned? */
    if (!settings.sasl)
        return;

    c->authenticated = false;

    if (!c->sasl_conn) {
        int result=FUNC2("memcached",
                                   NULL,
                                   my_sasl_hostname[0] ? my_sasl_hostname : NULL,
                                   NULL, NULL,
                                   NULL, 0, &c->sasl_conn);
        if (result != SASL_OK) {
            if (settings.verbose) {
                FUNC1(stderr, "Failed to initialize SASL conn.\n");
            }
            c->sasl_conn = NULL;
        }
    }
}