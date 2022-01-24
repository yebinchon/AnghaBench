#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  test_crypto; } ;
struct context {TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(const struct context *c)
{
    FUNC0(!c->options.test_crypto);
    FUNC1(M_WARN,
        "******* WARNING *******: All encryption and authentication features "
        "disabled -- All data will be tunnelled as clear text and will not be "
        "protected against man-in-the-middle changes. "
        "PLEASE DO RECONSIDER THIS CONFIGURATION!");
}