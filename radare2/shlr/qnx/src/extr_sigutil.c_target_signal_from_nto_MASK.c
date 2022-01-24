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
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_3__ {int nto_sig; int gdb_sig; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int NTO_SIGRTMAX ; 
 int NTO_SIGRTMIN ; 
 int TARGET_SIGNAL_REALTIME_41 ; 
 TYPE_1__* sig_map ; 
 int FUNC1 (int) ; 

enum target_signal
FUNC2 (int sig) {
	int i;
	if (sig == 0)
		return 0;

	for (i = 0; i != FUNC0 (sig_map); i++) {
		if (sig_map[i].nto_sig == sig)
			return sig_map[i].gdb_sig;
	}

	if (sig >= NTO_SIGRTMIN && sig <= NTO_SIGRTMAX)
		return TARGET_SIGNAL_REALTIME_41 + sig - NTO_SIGRTMIN;
	return FUNC1 (sig);
}