#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ mfxVersion ;
typedef  scalar_t__ mfxStatus ;
typedef  int /*<<< orphan*/  mfxSession ;
typedef  int mfxIMPL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ MFX_ERR_NONE ; 
 int MFX_IMPL_HARDWARE_ANY ; 
 int MFX_IMPL_VIA_D3D11 ; 
 int MFX_IMPL_VIA_D3D9 ; 
 int /*<<< orphan*/  obs_qsv_encoder ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(void)
{
	mfxIMPL impl = MFX_IMPL_HARDWARE_ANY | MFX_IMPL_VIA_D3D11;
	mfxVersion ver = {{0, 1}};
	mfxSession session;
	mfxStatus sts;

	sts = FUNC1(impl, &ver, &session);

	if (sts == MFX_ERR_NONE) {
		FUNC2(&obs_qsv_encoder);
		FUNC0(session);
	} else {
		impl = MFX_IMPL_HARDWARE_ANY | MFX_IMPL_VIA_D3D9;
		sts = FUNC1(impl, &ver, &session);
		if (sts == MFX_ERR_NONE) {
			FUNC2(&obs_qsv_encoder);
			FUNC0(session);
		}
	}

	return true;
}