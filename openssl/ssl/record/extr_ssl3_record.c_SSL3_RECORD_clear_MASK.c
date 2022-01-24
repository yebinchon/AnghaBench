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
struct TYPE_4__ {unsigned char* comp; } ;
typedef  TYPE_1__ SSL3_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC1(SSL3_RECORD *r, size_t num_recs)
{
    unsigned char *comp;
    size_t i;

    for (i = 0; i < num_recs; i++) {
        comp = r[i].comp;

        FUNC0(&r[i], 0, sizeof(*r));
        r[i].comp = comp;
    }
}