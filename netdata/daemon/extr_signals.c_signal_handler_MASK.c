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
struct TYPE_2__ {scalar_t__ action; int signo; int /*<<< orphan*/  name; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ NETDATA_SIGNAL_END_OF_LIST ; 
 scalar_t__ NETDATA_SIGNAL_FATAL ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 TYPE_1__* signals_waiting ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int signo) {
    // find the entry in the list
    int i;
    for(i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST ; i++) {
        if(FUNC2(signals_waiting[i].signo == signo)) {
            signals_waiting[i].count++;

            if(signals_waiting[i].action == NETDATA_SIGNAL_FATAL) {
                char buffer[200 + 1];
                FUNC0(buffer, 200, "\nSIGNAL HANLDER: received: %s. Oops! This is bad!\n", signals_waiting[i].name);
                if(FUNC3(STDERR_FILENO, buffer, FUNC1(buffer)) == -1) {
                    // nothing to do - we cannot write but there is no way to complain about it
                    ;
                }
            }

            return;
        }
    }
}