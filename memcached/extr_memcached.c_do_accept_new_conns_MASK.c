#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {int /*<<< orphan*/  sfd; struct TYPE_7__* next; } ;
typedef  TYPE_1__ conn ;
struct TYPE_10__ {int /*<<< orphan*/  backlog; } ;
struct TYPE_9__ {int /*<<< orphan*/  listen_disabled_num; struct timeval maxconns_entered; int /*<<< orphan*/  time_in_listen_disabled_us; } ;
struct TYPE_8__ {int accepting_conns; } ;

/* Variables and functions */
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int allow_new_conns ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* listen_conn ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_5__ settings ; 
 TYPE_4__ stats ; 
 TYPE_3__ stats_state ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void FUNC7(const bool do_accept) {
    conn *next;

    for (next = listen_conn; next; next = next->next) {
        if (do_accept) {
            FUNC6(next, EV_READ | EV_PERSIST);
            if (FUNC3(next->sfd, settings.backlog) != 0) {
                FUNC5("listen");
            }
        }
        else {
            FUNC6(next, 0);
            if (FUNC3(next->sfd, 0) != 0) {
                FUNC5("listen");
            }
        }
    }

    if (do_accept) {
        struct timeval maxconns_exited;
        uint64_t elapsed_us;
        FUNC2(&maxconns_exited,NULL);
        FUNC0();
        elapsed_us =
            (maxconns_exited.tv_sec - stats.maxconns_entered.tv_sec) * 1000000
            + (maxconns_exited.tv_usec - stats.maxconns_entered.tv_usec);
        stats.time_in_listen_disabled_us += elapsed_us;
        stats_state.accepting_conns = true;
        FUNC1();
    } else {
        FUNC0();
        stats_state.accepting_conns = false;
        FUNC2(&stats.maxconns_entered,NULL);
        stats.listen_disabled_num++;
        FUNC1();
        allow_new_conns = false;
        FUNC4(-42, 0, 0);
    }
}