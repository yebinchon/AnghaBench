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
typedef  int /*<<< orphan*/  u64 ;
struct vgic_its {int /*<<< orphan*/  its_lock; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
#define  GITS_CMD_CLEAR 139 
#define  GITS_CMD_DISCARD 138 
#define  GITS_CMD_INT 137 
#define  GITS_CMD_INV 136 
#define  GITS_CMD_INVALL 135 
#define  GITS_CMD_MAPC 134 
#define  GITS_CMD_MAPD 133 
#define  GITS_CMD_MAPI 132 
#define  GITS_CMD_MAPTI 131 
#define  GITS_CMD_MOVALL 130 
#define  GITS_CMD_MOVI 129 
#define  GITS_CMD_SYNC 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct kvm *kvm, struct vgic_its *its,
				   u64 *its_cmd)
{
	int ret = -ENODEV;

	FUNC1(&its->its_lock);
	switch (FUNC0(its_cmd)) {
	case GITS_CMD_MAPD:
		ret = FUNC9(kvm, its, its_cmd);
		break;
	case GITS_CMD_MAPC:
		ret = FUNC8(kvm, its, its_cmd);
		break;
	case GITS_CMD_MAPI:
		ret = FUNC10(kvm, its, its_cmd);
		break;
	case GITS_CMD_MAPTI:
		ret = FUNC10(kvm, its, its_cmd);
		break;
	case GITS_CMD_MOVI:
		ret = FUNC12(kvm, its, its_cmd);
		break;
	case GITS_CMD_DISCARD:
		ret = FUNC4(kvm, its, its_cmd);
		break;
	case GITS_CMD_CLEAR:
		ret = FUNC3(kvm, its, its_cmd);
		break;
	case GITS_CMD_MOVALL:
		ret = FUNC11(kvm, its, its_cmd);
		break;
	case GITS_CMD_INT:
		ret = FUNC5(kvm, its, its_cmd);
		break;
	case GITS_CMD_INV:
		ret = FUNC6(kvm, its, its_cmd);
		break;
	case GITS_CMD_INVALL:
		ret = FUNC7(kvm, its, its_cmd);
		break;
	case GITS_CMD_SYNC:
		/* we ignore this command: we are in sync all of the time */
		ret = 0;
		break;
	}
	FUNC2(&its->its_lock);

	return ret;
}