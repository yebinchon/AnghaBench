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
struct TYPE_2__ {int Machine; } ;

/* Variables and functions */
#define  TE_IMAGE_FILE_MACHINE_ALPHA 155 
#define  TE_IMAGE_FILE_MACHINE_ALPHA64 154 
#define  TE_IMAGE_FILE_MACHINE_AM33 153 
#define  TE_IMAGE_FILE_MACHINE_AMD64 152 
#define  TE_IMAGE_FILE_MACHINE_ARM 151 
#define  TE_IMAGE_FILE_MACHINE_CEE 150 
#define  TE_IMAGE_FILE_MACHINE_CEF 149 
#define  TE_IMAGE_FILE_MACHINE_EBC 148 
#define  TE_IMAGE_FILE_MACHINE_I386 147 
#define  TE_IMAGE_FILE_MACHINE_IA64 146 
#define  TE_IMAGE_FILE_MACHINE_M32R 145 
#define  TE_IMAGE_FILE_MACHINE_M68K 144 
#define  TE_IMAGE_FILE_MACHINE_MIPS16 143 
#define  TE_IMAGE_FILE_MACHINE_MIPSFPU 142 
#define  TE_IMAGE_FILE_MACHINE_MIPSFPU16 141 
#define  TE_IMAGE_FILE_MACHINE_POWERPC 140 
#define  TE_IMAGE_FILE_MACHINE_POWERPCFP 139 
#define  TE_IMAGE_FILE_MACHINE_R10000 138 
#define  TE_IMAGE_FILE_MACHINE_R3000 137 
#define  TE_IMAGE_FILE_MACHINE_R4000 136 
#define  TE_IMAGE_FILE_MACHINE_SH3 135 
#define  TE_IMAGE_FILE_MACHINE_SH3DSP 134 
#define  TE_IMAGE_FILE_MACHINE_SH3E 133 
#define  TE_IMAGE_FILE_MACHINE_SH4 132 
#define  TE_IMAGE_FILE_MACHINE_SH5 131 
#define  TE_IMAGE_FILE_MACHINE_THUMB 130 
#define  TE_IMAGE_FILE_MACHINE_TRICORE 129 
#define  TE_IMAGE_FILE_MACHINE_WCEMIPSV2 128 
 char* FUNC0 (char*) ; 

char* FUNC1(struct r_bin_te_obj_t* bin) {
	char *machine;
	if (!bin) {
		return NULL;
	}
	switch (bin->header->Machine) {
	case TE_IMAGE_FILE_MACHINE_ALPHA:
		machine = FUNC0 ("Alpha");
		break;
	case TE_IMAGE_FILE_MACHINE_ALPHA64:
		machine = FUNC0 ("Alpha 64");
		break;
	case TE_IMAGE_FILE_MACHINE_AM33:
		machine = FUNC0 ("AM33");
		break;
	case TE_IMAGE_FILE_MACHINE_AMD64:
		machine = FUNC0 ("AMD 64");
		break;
	case TE_IMAGE_FILE_MACHINE_ARM:
		machine = FUNC0 ("ARM");
		break;
	case TE_IMAGE_FILE_MACHINE_CEE:
		machine = FUNC0 ("CEE");
		break;
	case TE_IMAGE_FILE_MACHINE_CEF:
		machine = FUNC0 ("CEF");
		break;
	case TE_IMAGE_FILE_MACHINE_EBC:
		machine = FUNC0 ("EBC");
		break;
	case TE_IMAGE_FILE_MACHINE_I386:
		machine = FUNC0 ("i386");
		break;
	case TE_IMAGE_FILE_MACHINE_IA64:
		machine = FUNC0 ("ia64");
		break;
	case TE_IMAGE_FILE_MACHINE_M32R:
		machine = FUNC0 ("M32R");
		break;
	case TE_IMAGE_FILE_MACHINE_M68K:
		machine = FUNC0 ("M68K");
		break;
	case TE_IMAGE_FILE_MACHINE_MIPS16:
		machine = FUNC0 ("Mips 16");
		break;
	case TE_IMAGE_FILE_MACHINE_MIPSFPU:
		machine = FUNC0 ("Mips FPU");
		break;
	case TE_IMAGE_FILE_MACHINE_MIPSFPU16:
		machine = FUNC0 ("Mips FPU 16");
		break;
	case TE_IMAGE_FILE_MACHINE_POWERPC:
		machine = FUNC0 ("PowerPC");
		break;
	case TE_IMAGE_FILE_MACHINE_POWERPCFP:
		machine = FUNC0 ("PowerPC FP");
		break;
	case TE_IMAGE_FILE_MACHINE_R10000:
		machine = FUNC0 ("R10000");
		break;
	case TE_IMAGE_FILE_MACHINE_R3000:
		machine = FUNC0 ("R3000");
		break;
	case TE_IMAGE_FILE_MACHINE_R4000:
		machine = FUNC0 ("R4000");
		break;
	case TE_IMAGE_FILE_MACHINE_SH3:
		machine = FUNC0 ("SH3");
		break;
	case TE_IMAGE_FILE_MACHINE_SH3DSP:
		machine = FUNC0 ("SH3DSP");
		break;
	case TE_IMAGE_FILE_MACHINE_SH3E:
		machine = FUNC0 ("SH3E");
		break;
	case TE_IMAGE_FILE_MACHINE_SH4:
		machine = FUNC0 ("SH4");
		break;
	case TE_IMAGE_FILE_MACHINE_SH5:
		machine = FUNC0 ("SH5");
		break;
	case TE_IMAGE_FILE_MACHINE_THUMB:
		machine = FUNC0 ("Thumb");
		break;
	case TE_IMAGE_FILE_MACHINE_TRICORE:
		machine = FUNC0 ("Tricore");
		break;
	case TE_IMAGE_FILE_MACHINE_WCEMIPSV2:
		machine = FUNC0 ("WCE Mips V2");
		break;
	default:
		machine = FUNC0 ("unknown");
	}
	return machine;
}