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
struct r_bin_te_obj_t {TYPE_1__* header; } ;
struct TYPE_2__ {int Subsystem; } ;

/* Variables and functions */
#define  TE_IMAGE_SUBSYSTEM_EFI_APPLICATION 137 
#define  TE_IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER 136 
#define  TE_IMAGE_SUBSYSTEM_EFI_ROM 135 
#define  TE_IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER 134 
#define  TE_IMAGE_SUBSYSTEM_NATIVE 133 
#define  TE_IMAGE_SUBSYSTEM_POSIX_CUI 132 
#define  TE_IMAGE_SUBSYSTEM_WINDOWS_CE_GUI 131 
#define  TE_IMAGE_SUBSYSTEM_WINDOWS_CUI 130 
#define  TE_IMAGE_SUBSYSTEM_WINDOWS_GUI 129 
#define  TE_IMAGE_SUBSYSTEM_XBOX 128 
 char* FUNC0 (char*) ; 

char* FUNC1(struct r_bin_te_obj_t* bin) {
	char *subsystem;

	if (!bin) {
		return NULL;
	}
	switch (bin->header->Subsystem) {
	case TE_IMAGE_SUBSYSTEM_NATIVE:
		subsystem = FUNC0 ("Native");
		break;
	case TE_IMAGE_SUBSYSTEM_WINDOWS_GUI:
		subsystem = FUNC0 ("Windows GUI");
		break;
	case TE_IMAGE_SUBSYSTEM_WINDOWS_CUI:
		subsystem = FUNC0 ("Windows CUI");
		break;
	case TE_IMAGE_SUBSYSTEM_POSIX_CUI:
		subsystem = FUNC0 ("POSIX CUI");
		break;
	case TE_IMAGE_SUBSYSTEM_WINDOWS_CE_GUI:
		subsystem = FUNC0 ("Windows CE GUI");
		break;
	case TE_IMAGE_SUBSYSTEM_EFI_APPLICATION:
		subsystem = FUNC0 ("EFI Application");
		break;
	case TE_IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER:
		subsystem = FUNC0 ("EFI Boot Service Driver");
		break;
	case TE_IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER:
		subsystem = FUNC0 ("EFI Runtime Driver");
		break;
	case TE_IMAGE_SUBSYSTEM_EFI_ROM:
		subsystem = FUNC0 ("EFI ROM");
		break;
	case TE_IMAGE_SUBSYSTEM_XBOX:
		subsystem = FUNC0 ("XBOX");
		break;
	default:
		subsystem = FUNC0 ("Unknown");
	}
	return subsystem;
}