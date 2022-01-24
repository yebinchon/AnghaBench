#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_4__ {int os; int /*<<< orphan*/  bits; int /*<<< orphan*/  arch; } ;
typedef  TYPE_1__ REgg ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
#define  R_EGG_OS_DARWIN 132 
#define  R_EGG_OS_LINUX 131 
#define  R_EGG_OS_OSX 130 
#define  R_SYS_ARCH_ARM 129 
#define  R_SYS_ARCH_X86 128 
 int /*<<< orphan*/ * arm_linux_binsh ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_1__*,char*) ; 
 char const* shell ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char const* suid ; 
 int /*<<< orphan*/ * x86_64_linux_binsh ; 
 int /*<<< orphan*/ * x86_linux_binsh ; 
 int /*<<< orphan*/ * x86_osx_binsh ; 
 int /*<<< orphan*/ * x86_osx_suid_binsh ; 

__attribute__((used)) static RBuffer *FUNC7 (REgg *egg) {
	RBuffer *buf = FUNC2 ();
	const ut8 *sc = NULL;
	int cd = 0;
	char *port = FUNC5 (egg, "port");
	//TODO: char *udp = r_egg_option_get (egg, "udp");
	switch (egg->os) {
	case R_EGG_OS_OSX:
	case R_EGG_OS_DARWIN:
		switch (egg->arch) {
		case R_SYS_ARCH_X86:
			if (suid) {
				sc = x86_osx_suid_binsh;
				cd = 7+36;
			} else {
				sc = x86_osx_binsh;
				cd = 36;
			}
		case R_SYS_ARCH_ARM:
			// TODO
			break;
		}
		break;
	case R_EGG_OS_LINUX:
		if (suid) FUNC0 ("no suid for this platform\n");
		suid = 0;
		switch (egg->arch) {
		case R_SYS_ARCH_X86:
			switch (egg->bits) {
			case 32: sc = x86_linux_binsh; break;
			case 64: sc = x86_64_linux_binsh; break;
			default: FUNC0 ("Unsupportted\n");
			}
			break;
		case R_SYS_ARCH_ARM:
			sc = arm_linux_binsh;
			break;
		}
		break;
	default:
		FUNC0 ("unsupported os %x\n", egg->os);
		break;
	}
	if (sc) {
		FUNC3 (buf, sc, FUNC6 ((const char *)sc));
		if (shell && *shell) {
			if (cd) FUNC4 (buf, cd, (const ut8*)shell, FUNC6 (shell)+1);
			else FUNC0 ("Cannot set shell\n");
		}
	}
	FUNC1 (suid);
	FUNC1 (shell);
	return buf;
}