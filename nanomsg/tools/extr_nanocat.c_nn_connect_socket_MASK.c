#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num; int /*<<< orphan*/ * items; } ;
struct TYPE_6__ {int num; int /*<<< orphan*/ * items; } ;
struct TYPE_7__ {TYPE_1__ connect_addresses; TYPE_2__ bind_addresses; } ;
typedef  TYPE_3__ nn_options_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3 (nn_options_t *options, int sock)
{
    int i;
    int rc;

    for (i = 0; i < options->bind_addresses.num; ++i) {
        rc = FUNC1 (sock, options->bind_addresses.items[i]);
        FUNC0 (rc >= 0, "Can't bind");
    }
    for (i = 0; i < options->connect_addresses.num; ++i) {
        rc = FUNC2 (sock, options->connect_addresses.items[i]);
        FUNC0 (rc >= 0, "Can't connect");
    }
}