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
typedef  void* ut32 ;
struct winedbg_x86_32 {void* edi; void* esi; void* edx; void* ecx; void* ebx; void* eax; void* eflags; void* ebp; void* esp; void* eip; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,void**,void**,...) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static struct winedbg_x86_32 FUNC4() {
	struct winedbg_x86_32 r = {0};
	char *res = FUNC1 ("info reg");
	if (res) {
		char *line = FUNC3 (res, "EIP:");
		if (line) {
			ut32 eip, esp, ebp, eflags;
			(void)FUNC2 (line, "EIP:%08x ESP:%08x EBP:%08x EFLAGS:%08x",
				&eip, &esp, &ebp, &eflags);
			r.eip = eip;
			r.esp = esp;
			r.ebp = ebp;
			r.eflags = eflags;
			line = FUNC3 (line, "EAX:");
			if (line) {
				ut32 eax, ebx, ecx, edx;
				(void)FUNC2 (line, "EAX:%08x EBX:%08x ECX:%08x EDX:%08x",
					&eax, &ebx, &ecx, &edx);
				r.eax = eax;
				r.ebx = ebx;
				r.ecx = ecx;
				r.edx = edx;
				line = FUNC3 (line, "ESI:");
				if (line) {
					ut32 esi, edi;
					(void)FUNC2 (line, "ESI:%08x EDI:%08x", &esi, &edi);
					r.esi = esi;
					r.edi = edi;
				}
			}
		}
		FUNC0 (res);
	}
	return r;
}