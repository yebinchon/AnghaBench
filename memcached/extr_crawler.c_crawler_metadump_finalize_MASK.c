#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  cbuf; int /*<<< orphan*/ * c; } ;
struct TYPE_4__ {TYPE_2__ c; } ;
typedef  TYPE_1__ crawler_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(crawler_module_t *cm) {
    if (cm->c.c != NULL) {
        // Ensure space for final message.
        FUNC1(&cm->c);
        FUNC2(cm->c.cbuf, "END\r\n", 5);
        FUNC0(cm->c.buf, 5);
    }
}