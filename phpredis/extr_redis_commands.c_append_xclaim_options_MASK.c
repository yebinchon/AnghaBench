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
struct TYPE_4__ {int time; int /*<<< orphan*/ * type; } ;
struct TYPE_5__ {int retrycount; scalar_t__ justid; scalar_t__ force; TYPE_1__ idle; } ;
typedef  TYPE_2__ xclaimOptions ;
typedef  int /*<<< orphan*/  smart_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(smart_string *cmd, xclaimOptions *opt) {
    /* IDLE/TIME long */
    if (opt->idle.type != NULL && opt->idle.time != -1) {
        FUNC1(cmd, opt->idle.type, FUNC4(opt->idle.type));
        FUNC2(cmd, opt->idle.time);
    }

    /* RETRYCOUNT */
    if (opt->retrycount != -1) {
        FUNC0(cmd, "RETRYCOUNT");
        FUNC3(cmd, opt->retrycount);
    }

    /* FORCE and JUSTID */
    if (opt->force)
        FUNC0(cmd, "FORCE");
    if (opt->justid)
        FUNC0(cmd, "JUSTID");
}