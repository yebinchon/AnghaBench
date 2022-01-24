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
struct TYPE_4__ {int /*<<< orphan*/ * client; int /*<<< orphan*/ * server; } ;
typedef  TYPE_1__ CIPHERLIST_TEST_FIXTURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(CIPHERLIST_TEST_FIXTURE *fixture)
{
    if (fixture != NULL) {
        FUNC1(fixture->server);
        FUNC1(fixture->client);
        fixture->server = fixture->client = NULL;
        FUNC0(fixture);
    }
}