#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  PROCSIG_RECOVERY_CONFLICT_BUFFERPIN 133 
#define  PROCSIG_RECOVERY_CONFLICT_DATABASE 132 
#define  PROCSIG_RECOVERY_CONFLICT_LOCK 131 
#define  PROCSIG_RECOVERY_CONFLICT_SNAPSHOT 130 
#define  PROCSIG_RECOVERY_CONFLICT_STARTUP_DEADLOCK 129 
#define  PROCSIG_RECOVERY_CONFLICT_TABLESPACE 128 
 int RecoveryConflictReason ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int
FUNC1(void)
{
	switch (RecoveryConflictReason)
	{
		case PROCSIG_RECOVERY_CONFLICT_BUFFERPIN:
			FUNC0("User was holding shared buffer pin for too long.");
			break;
		case PROCSIG_RECOVERY_CONFLICT_LOCK:
			FUNC0("User was holding a relation lock for too long.");
			break;
		case PROCSIG_RECOVERY_CONFLICT_TABLESPACE:
			FUNC0("User was or might have been using tablespace that must be dropped.");
			break;
		case PROCSIG_RECOVERY_CONFLICT_SNAPSHOT:
			FUNC0("User query might have needed to see row versions that must be removed.");
			break;
		case PROCSIG_RECOVERY_CONFLICT_STARTUP_DEADLOCK:
			FUNC0("User transaction caused buffer deadlock with recovery.");
			break;
		case PROCSIG_RECOVERY_CONFLICT_DATABASE:
			FUNC0("User was connected to a database that must be dropped.");
			break;
		default:
			break;
			/* no errdetail */
	}

	return 0;
}