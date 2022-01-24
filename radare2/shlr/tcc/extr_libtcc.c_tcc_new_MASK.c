#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int bits; int alacarte_link; int nocommon; int char_is_unsigned; int leading_underscore; int seg_size; int /*<<< orphan*/  include_stack; int /*<<< orphan*/  include_stack_ptr; int /*<<< orphan*/  output_type; void* os; void* arch; } ;
typedef  TYPE_1__ TCCState ;

/* Variables and functions */
 int /*<<< orphan*/  MACRO_OBJ ; 
 int /*<<< orphan*/  TCC_OUTPUT_MEMORY ; 
 int /*<<< orphan*/  TCC_VERSION ; 
 int /*<<< orphan*/  TOK___DATE__ ; 
 int /*<<< orphan*/  TOK___FILE__ ; 
 int /*<<< orphan*/  TOK___LINE__ ; 
 int /*<<< orphan*/  TOK___TIME__ ; 
 int /*<<< orphan*/  __FreeBSD__ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*,int*,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 
 TYPE_1__* FUNC9 (int) ; 
 TYPE_1__* tcc_state ; 

TCCState *FUNC10(const char *arch, int bits, const char *os)
{
	TCCState *s;
	char buffer[100];
	int a, b, c;

	if (!arch || !os) {
		return NULL;
	}
	FUNC7 ();
	s = FUNC9 (sizeof(TCCState));
	if (!s) {
		return NULL;
	}
	tcc_state = s;
	s->arch = FUNC5 (arch);
	s->bits = bits;
	s->os = FUNC5 (os);
	s->output_type = TCC_OUTPUT_MEMORY;
	FUNC1 ();
	s->include_stack_ptr = s->include_stack;

	/* we add dummy defines for some special macros to speed up tests
	   and to have working defined() */
	FUNC0 (TOK___LINE__, MACRO_OBJ, NULL, NULL);
	FUNC0 (TOK___FILE__, MACRO_OBJ, NULL, NULL);
	FUNC0 (TOK___DATE__, MACRO_OBJ, NULL, NULL);
	FUNC0 (TOK___TIME__, MACRO_OBJ, NULL, NULL);

	/* define __TINYC__ 92X  */
	FUNC3 (TCC_VERSION, "%d.%d.%d", &a, &b, &c);
	FUNC2 (buffer, "%d", a * 10000 + b * 100 + c);
	FUNC8 (s, "__TINYC__", buffer);
	FUNC8 (s, "__R2TINYC__", buffer);

	/* standard defines */
	FUNC8 (s, "__STDC__", NULL);
	FUNC8 (s, "__STDC_VERSION__", "199901L");
	FUNC8 (s, "__STDC_HOSTED__", NULL);

	/* type defines */
	FUNC8 (s, "ut8", "uint8_t");
	FUNC8 (s, "ut16", "uint16_t");
	FUNC8 (s, "ut32", "uint32_t");
	FUNC8 (s, "ut64", "uint64_t");

	FUNC8 (s, "st8", "int8_t");
	FUNC8 (s, "st16", "int16_t");
	FUNC8 (s, "st32", "int32_t");
	FUNC8 (s, "st64", "int64_t");

	/* target defines */
	if (!FUNC6 (arch, "x86", 3)) {
		if (bits == 32 || bits == 16) {
			FUNC8 (s, "__i386__", NULL);
			FUNC8 (s, "__i386", NULL);
			FUNC8 (s, "i386", NULL);
		} else {
			FUNC8 (s, "__x86_64__", NULL);
		}
	} else if (!FUNC6 (arch, "arm", 3)) {
		FUNC8 (s, "__ARM_ARCH_4__", NULL);
		FUNC8 (s, "__arm_elf__", NULL);
		FUNC8 (s, "__arm_elf", NULL);
		FUNC8 (s, "arm_elf", NULL);
		FUNC8 (s, "__arm__", NULL);
		FUNC8 (s, "__arm", NULL);
		FUNC8 (s, "arm", NULL);
		FUNC8 (s, "__APCS_32__", NULL);
	}
	// TODO: Add other architectures
	// TODO: Move that in SDB

	if (!FUNC6 (os, "windows", 7)) {
		FUNC8 (s, "__WINDOWS__", NULL);
		if (bits == 64) {
			FUNC8 (s, "_WIN64", NULL);
		}
	} else {
		FUNC8 (s, "__unix__", NULL);
		FUNC8 (s, "__unix", NULL);
		FUNC8 (s, "unix", NULL);

		if (!FUNC6 (os, "linux", 5)) {
			FUNC8 (s, "__linux__", NULL);
			FUNC8 (s, "__linux", NULL);
		}
#define str(s) #s
		if (!FUNC6 (os, "freebsd", 7)) {
			FUNC8 (s, "__FreeBSD__", str ( __FreeBSD__));
		}
#undef str
	}

	/* TinyCC & gcc defines */
	if (!FUNC6 (os, "windows", 7) && (bits == 64)) {
		FUNC8 (s, "__SIZE_TYPE__", "unsigned long long");
		FUNC8 (s, "__PTRDIFF_TYPE__", "long long");
	} else {
		FUNC8 (s, "__SIZE_TYPE__", "unsigned long");
		FUNC8 (s, "__PTRDIFF_TYPE__", "long");
	}

	if (!FUNC6 (os, "windows", 7)) {
		FUNC8 (s, "__WCHAR_TYPE__", "unsigned short");
	} else {
		FUNC8 (s, "__WCHAR_TYPE__", "int");
		/* glibc defines */
		FUNC8 (s, "__REDIRECT(name, proto, alias)", "name proto __asm__(#alias)");
		FUNC8 (s, "__REDIRECT_NTH(name, proto, alias)", "name proto __asm__(#alias) __THROW");
	}

	s->alacarte_link = 1;
	s->nocommon = 1;

#ifdef CHAR_IS_UNSIGNED
	s->char_is_unsigned = 1;
#endif
	/* enable this if you want symbols with leading underscore on windows: */
#if 0	/* def TCC_TARGET_PE */
	s->leading_underscore = 1;
#endif
	if (!FUNC6 (arch, "x86", 3)) {
		// TODO: Set it to 16 for 16bit x86
		if (bits == 32 || bits == 16) {
			s->seg_size = 32;
		}
	}
	return s;
}