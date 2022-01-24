#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  rrdvar_root_index; } ;
struct TYPE_9__ {TYPE_1__* rrdfamily; int /*<<< orphan*/  rrdvar_root_index; int /*<<< orphan*/  name; int /*<<< orphan*/  id; TYPE_4__* rrdhost; } ;
struct TYPE_8__ {int options; int /*<<< orphan*/  value; int /*<<< orphan*/  type; void* key_fullname; void* var_host_name; void* key_fullid; void* var_host; void* var_family_name; void* var_family; void* variable; void* var_local; TYPE_3__* rrdset; } ;
struct TYPE_7__ {int /*<<< orphan*/  rrdvar_root_index; } ;
typedef  int RRDVAR_OPTIONS ;
typedef  TYPE_2__ RRDSETVAR ;
typedef  TYPE_3__ RRDSET ;
typedef  TYPE_4__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  RRDVAR_MAX_LENGTH ; 
 int RRDVAR_OPTION_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static inline void FUNC4(RRDSETVAR *rs) {
    RRDSET *st = rs->rrdset;
    RRDHOST *host = st->rrdhost;

    RRDVAR_OPTIONS options = rs->options;
    if(rs->options & RRDVAR_OPTION_ALLOCATED)
        options &= ~ RRDVAR_OPTION_ALLOCATED;

    // ------------------------------------------------------------------------
    // free the old ones (if any)

    FUNC0(rs);

    // ------------------------------------------------------------------------
    // KEYS

    char buffer[RRDVAR_MAX_LENGTH + 1];
    FUNC2(buffer, RRDVAR_MAX_LENGTH, "%s.%s", st->id, rs->variable);
    rs->key_fullid = FUNC3(buffer);

    FUNC2(buffer, RRDVAR_MAX_LENGTH, "%s.%s", st->name, rs->variable);
    rs->key_fullname = FUNC3(buffer);

    // ------------------------------------------------------------------------
    // CHART
    rs->var_local       = FUNC1("local",  &st->rrdvar_root_index, rs->variable, rs->type, options, rs->value);

    // ------------------------------------------------------------------------
    // FAMILY
    rs->var_family      = FUNC1("family", &st->rrdfamily->rrdvar_root_index, rs->key_fullid,   rs->type, options, rs->value);
    rs->var_family_name = FUNC1("family", &st->rrdfamily->rrdvar_root_index, rs->key_fullname, rs->type, options, rs->value);

    // ------------------------------------------------------------------------
    // HOST
    rs->var_host        = FUNC1("host",   &host->rrdvar_root_index, rs->key_fullid,   rs->type, options, rs->value);
    rs->var_host_name   = FUNC1("host",   &host->rrdvar_root_index, rs->key_fullname, rs->type, options, rs->value);
}