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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vgic_its {int /*<<< orphan*/  baser_device_table; } ;
struct kvm {int dummy; } ;
struct its_device {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int E_ITS_MAPD_DEVICE_OOR ; 
 int E_ITS_MAPD_ITTSIZE_OOR ; 
 int FUNC0 (struct its_device*) ; 
 scalar_t__ VITS_TYPER_IDBITS ; 
 struct its_device* FUNC1 (struct vgic_its*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct its_device* FUNC6 (struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*,struct its_device*) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm, struct vgic_its *its,
				    u64 *its_cmd)
{
	u32 device_id = FUNC2(its_cmd);
	bool valid = FUNC5(its_cmd);
	u8 num_eventid_bits = FUNC4(its_cmd);
	gpa_t itt_addr = FUNC3(its_cmd);
	struct its_device *device;

	if (!FUNC7(its, its->baser_device_table, device_id, NULL))
		return E_ITS_MAPD_DEVICE_OOR;

	if (valid && num_eventid_bits > VITS_TYPER_IDBITS)
		return E_ITS_MAPD_ITTSIZE_OOR;

	device = FUNC1(its, device_id);

	/*
	 * The spec says that calling MAPD on an already mapped device
	 * invalidates all cached data for this device. We implement this
	 * by removing the mapping and re-establishing it.
	 */
	if (device)
		FUNC8(kvm, device);

	/*
	 * The spec does not say whether unmapping a not-mapped device
	 * is an error, so we are done in any case.
	 */
	if (!valid)
		return 0;

	device = FUNC6(its, device_id, itt_addr,
				       num_eventid_bits);

	return FUNC0(device);
}