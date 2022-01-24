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
struct TYPE_8__ {int /*<<< orphan*/  rrdpush_send_charts_matching; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; TYPE_2__* rrdhost; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;

/* Variables and functions */
 int RRDSET_FLAG_ENABLED ; 
 int RRDSET_FLAG_UPSTREAM_IGNORE ; 
 int RRDSET_FLAG_UPSTREAM_SEND ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(RRDSET *st) {
    if(FUNC4(!FUNC0(st, RRDSET_FLAG_ENABLED))) {
        FUNC1(st, RRDSET_FLAG_UPSTREAM_SEND);
        FUNC2(st, RRDSET_FLAG_UPSTREAM_IGNORE);
    }
    else if(!FUNC0(st, RRDSET_FLAG_UPSTREAM_SEND|RRDSET_FLAG_UPSTREAM_IGNORE)) {
        RRDHOST *host = st->rrdhost;

        if(FUNC3(host->rrdpush_send_charts_matching, st->id) ||
            FUNC3(host->rrdpush_send_charts_matching, st->name)) {
            FUNC1(st, RRDSET_FLAG_UPSTREAM_IGNORE);
            FUNC2(st, RRDSET_FLAG_UPSTREAM_SEND);
        }
        else {
            FUNC1(st, RRDSET_FLAG_UPSTREAM_SEND);
            FUNC2(st, RRDSET_FLAG_UPSTREAM_IGNORE);
        }
    }

    return(FUNC0(st, RRDSET_FLAG_UPSTREAM_SEND));
}