#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* variables; int /*<<< orphan*/  name; int /*<<< orphan*/  id; TYPE_1__* rrdset; } ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_3__* rrddim; int /*<<< orphan*/  options; void* value; int /*<<< orphan*/  type; void* suffix; void* prefix; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  RRDVAR_TYPE ;
typedef  int /*<<< orphan*/  RRDVAR_OPTIONS ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDDIMVAR ;
typedef  TYPE_3__ RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  D_VARIABLES ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (char const*) ; 

RRDDIMVAR *FUNC4(RRDDIM *rd, RRDVAR_TYPE type, const char *prefix, const char *suffix, void *value, RRDVAR_OPTIONS options) {
    RRDSET *st = rd->rrdset;
    (void)st;

    FUNC1(D_VARIABLES, "RRDDIMSET create for chart id '%s' name '%s', dimension id '%s', name '%s%s%s'", st->id, st->name, rd->id, (prefix)?prefix:"", rd->name, (suffix)?suffix:"");

    if(!prefix) prefix = "";
    if(!suffix) suffix = "";

    RRDDIMVAR *rs = (RRDDIMVAR *)FUNC0(1, sizeof(RRDDIMVAR));

    rs->prefix = FUNC3(prefix);
    rs->suffix = FUNC3(suffix);

    rs->type = type;
    rs->value = value;
    rs->options = options;
    rs->rrddim = rd;

    rs->next = rd->variables;
    rd->variables = rs;

    FUNC2(rs);

    return rs;
}