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
struct TYPE_3__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/ * cbuf; int /*<<< orphan*/ * c; } ;
typedef  TYPE_1__ crawler_client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(crawler_client_t *c) {
    //fprintf(stderr, "CRAWLER: Closing client\n");
    FUNC1(c->c);
    c->c = NULL;
    c->cbuf = NULL;
    FUNC0(c->buf);
    c->buf = NULL;
}