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
struct TYPE_2__ {int* input; int /*<<< orphan*/  cmd_select; int /*<<< orphan*/  cmd_class; } ;
struct dell_wmi_smbios_buffer {TYPE_1__ std; scalar_t__ length; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CAPSULE_DIS_TOKEN ; 
 int /*<<< orphan*/  CAPSULE_EN_TOKEN ; 
 int /*<<< orphan*/  CLASS_FLASH_INTERFACE ; 
 int ENOMEM ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SELECT_FLASH_INTERFACE ; 
 scalar_t__ FUNC0 (struct dell_wmi_smbios_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dell_wmi_smbios_buffer*) ; 
 struct dell_wmi_smbios_buffer* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct dell_wmi_smbios_buffer*) ; 
 int FUNC6 (struct dell_wmi_smbios_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct dell_wmi_smbios_buffer*) ; 

int FUNC8(void)
{
	struct dell_wmi_smbios_buffer *buffer;
	int ret;
	__u64 value = 0;

	ret = FUNC4(&value);
	if (ret == EXIT_FAILURE || !value) {
		FUNC3("Unable to read buffer size\n");
		goto out;
	}
	FUNC3("Detected required buffer size %lld\n", value);

	buffer = FUNC2(value);
	if (buffer == NULL) {
		FUNC3("failed to alloc memory for ioctl\n");
		ret = -ENOMEM;
		goto out;
	}
	buffer->length = value;

	/* simple SMBIOS call for looking up TPM info */
	buffer->std.cmd_class = CLASS_FLASH_INTERFACE;
	buffer->std.cmd_select = SELECT_FLASH_INTERFACE;
	buffer->std.input[0] = 2;
	ret = FUNC6(buffer);
	if (ret) {
		FUNC3("smbios ioctl failed: %d\n", ret);
		ret = EXIT_FAILURE;
		goto out;
	}
	FUNC7(buffer);

	/* query some tokens */
	ret = FUNC5(CAPSULE_EN_TOKEN, buffer);
	FUNC3("UEFI Capsule enabled token is: %d\n", ret);
	ret = FUNC5(CAPSULE_DIS_TOKEN, buffer);
	FUNC3("UEFI Capsule disabled token is: %d\n", ret);

	/* activate UEFI capsule token if disabled */
	if (ret) {
		FUNC3("Enabling UEFI capsule token");
		if (FUNC0(buffer, CAPSULE_EN_TOKEN)) {
			FUNC3("activate failed\n");
			ret = -1;
			goto out;
		}
	}
	ret = EXIT_SUCCESS;
out:
	FUNC1(buffer);
	return ret;
}