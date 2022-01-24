#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
struct TYPE_20__ {int msgh_size; scalar_t__ msgh_remote_port; int /*<<< orphan*/  msgh_local_port; } ;
struct TYPE_17__ {TYPE_7__ Head; } ;
typedef  TYPE_1__ mig_reply_error_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_18__ {TYPE_7__ hdr; } ;
typedef  TYPE_2__ exc_msg ;
struct TYPE_19__ {int /*<<< orphan*/  stopaddr; } ;
struct TYPE_16__ {int /*<<< orphan*/  exception_port; } ;
typedef  TYPE_3__ RDebug ;

/* Variables and functions */
 int KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_MSG_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TIMEOUT_NONE ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int MACH_RCV_INTERRUPT ; 
 scalar_t__ MACH_RCV_INTERRUPTED ; 
 int MACH_RCV_MSG ; 
 int MACH_SEND_INTERRUPT ; 
 int MACH_SEND_MSG ; 
 int R_DEBUG_REASON_DEAD ; 
 int R_DEBUG_REASON_MACH_RCV_INTERRUPTED ; 
 int R_DEBUG_REASON_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_12__ ex ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,int*) ; 
 scalar_t__ FUNC4 (TYPE_7__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC9 (RDebug *dbg, int pid) {
	// here comes the important thing
	kern_return_t kr;
	int ret_code, reason = R_DEBUG_REASON_UNKNOWN;
	mig_reply_error_t reply;
	bool ret;
	exc_msg msg;
	if (!dbg) {
		return reason;
	}
	msg.hdr.msgh_local_port = ex.exception_port;
	msg.hdr.msgh_size = sizeof (exc_msg);
	for (;;) {
		kr = FUNC4 (
			&msg.hdr,
			MACH_RCV_MSG | MACH_RCV_INTERRUPT, 0,
			sizeof (exc_msg), ex.exception_port,
			MACH_MSG_TIMEOUT_NONE, MACH_PORT_NULL);
		if (kr == MACH_RCV_INTERRUPTED) {
			reason = R_DEBUG_REASON_MACH_RCV_INTERRUPTED;
			break;
		} else if (kr != MACH_MSG_SUCCESS) {
			FUNC1 ("message didn't succeeded\n");
			break;
		}
		ret = FUNC8 (dbg, &msg);
		if (!ret) {
			ret = FUNC2 (dbg, &msg);
			if (ret) {
				reason = R_DEBUG_REASON_DEAD;
				break;
			}
		}
		if (!ret) {
			FUNC0 (&reply, &msg.hdr, KERN_FAILURE);
			kr = FUNC4 (&reply.Head, MACH_SEND_MSG | MACH_SEND_INTERRUPT,
					reply.Head.msgh_size, 0,
					MACH_PORT_NULL, MACH_MSG_TIMEOUT_NONE,
					MACH_PORT_NULL);
			if (reply.Head.msgh_remote_port != 0 && kr != MACH_MSG_SUCCESS) {
				kr = FUNC5(FUNC6 (), reply.Head.msgh_remote_port);
				if (kr != KERN_SUCCESS) {
					FUNC1 ("failed to deallocate reply port\n");
				}
			}
			continue;
		}

		reason = FUNC3 (dbg, &msg, &ret_code);
		FUNC0 (&reply, &msg.hdr, ret_code);
		kr = FUNC4 (&reply.Head, MACH_SEND_MSG | MACH_SEND_INTERRUPT,
				reply.Head.msgh_size, 0,
				MACH_PORT_NULL, 0,
				MACH_PORT_NULL);
		if (reply.Head.msgh_remote_port != 0 && kr != MACH_MSG_SUCCESS) {
			kr = FUNC5(FUNC6 (), reply.Head.msgh_remote_port);
			if (kr != KERN_SUCCESS)
				FUNC1 ("failed to deallocate reply port\n");
		}
		break; // to avoid infinite loops
	}
	dbg->stopaddr = FUNC7 (dbg, "PC");
	return reason;
}