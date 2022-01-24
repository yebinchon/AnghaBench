#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  c; } ;
struct TYPE_8__ {scalar_t__ len; } ;
struct TYPE_7__ {TYPE_1__ args; TYPE_3__ cmd; int /*<<< orphan*/  kw_len; int /*<<< orphan*/  kw; int /*<<< orphan*/  argc; } ;
typedef  TYPE_2__ clusterMultiCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(clusterMultiCmd *mc) {
    mc->cmd.len = 0;
    FUNC0(&(mc->cmd), mc->argc, mc->kw, mc->kw_len);
    FUNC1(&(mc->cmd), mc->args.c, mc->args.len);
}