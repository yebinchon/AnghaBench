#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  rrd_memory_mode; int /*<<< orphan*/  hostname; } ;
struct TYPE_7__ {scalar_t__ rrd_memory_mode; int /*<<< orphan*/  id; int /*<<< orphan*/  name; TYPE_2__* rrdhost; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;
typedef  int /*<<< orphan*/  BACKEND_OPTIONS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BACKEND_SOURCE_DATA_AS_COLLECTED ; 
 int /*<<< orphan*/  D_BACKEND ; 
 int /*<<< orphan*/  RRDSET_FLAG_BACKEND_IGNORE ; 
 int /*<<< orphan*/  RRDSET_FLAG_BACKEND_SEND ; 
 scalar_t__ RRD_MEMORY_MODE_NONE ; 
 int /*<<< orphan*/  charts_pattern ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

inline int FUNC8(BACKEND_OPTIONS backend_options, RRDSET *st) {
    RRDHOST *host = st->rrdhost;
    (void)host;

    if(FUNC7(FUNC3(st, RRDSET_FLAG_BACKEND_IGNORE)))
        return 0;

    if(FUNC7(!FUNC3(st, RRDSET_FLAG_BACKEND_SEND))) {
        // we have not checked this chart
        if(FUNC6(charts_pattern, st->id) || FUNC6(charts_pattern, st->name))
            FUNC4(st, RRDSET_FLAG_BACKEND_SEND);
        else {
            FUNC4(st, RRDSET_FLAG_BACKEND_IGNORE);
            FUNC1(D_BACKEND, "BACKEND: not sending chart '%s' of host '%s', because it is disabled for backends.", st->id, host->hostname);
            return 0;
        }
    }

    if(FUNC7(!FUNC5(st))) {
        FUNC1(D_BACKEND, "BACKEND: not sending chart '%s' of host '%s', because it is not available for backends.", st->id, host->hostname);
        return 0;
    }

    if(FUNC7(st->rrd_memory_mode == RRD_MEMORY_MODE_NONE && !(FUNC0(backend_options) == BACKEND_SOURCE_DATA_AS_COLLECTED))) {
        FUNC1(D_BACKEND, "BACKEND: not sending chart '%s' of host '%s' because its memory mode is '%s' and the backend requires database access.", st->id, host->hostname, FUNC2(host->rrd_memory_mode));
        return 0;
    }

    return 1;
}