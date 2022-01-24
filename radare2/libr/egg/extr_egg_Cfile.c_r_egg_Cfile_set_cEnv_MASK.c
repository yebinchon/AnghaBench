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
struct cEnv_t {char* CC; char* JMP; char* OBJCOPY; char* FMT; char* CFLAGS; char* LDFLAGS; char const* TRIPLET; char* TEXT; void* SFLIBPATH; void* SHDR; } ;

/* Variables and functions */
 struct cEnv_t* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (struct cEnv_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct cEnv_t*) ; 
 char* FUNC7 () ; 
 void* FUNC8 (char*,char const*,...) ; 
 char* FUNC9 (char*) ; 
 void* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 void* FUNC12 (char*) ; 
 int FUNC13 (char*) ; 

__attribute__((used)) static struct cEnv_t* FUNC14(const char *arch, const char *os, int bits) {
	struct cEnv_t *cEnv = FUNC0 (1, sizeof (struct cEnv_t));
	bool use_clang;
	char *buffer = NULL;
	char *output = NULL;

	if (!cEnv) {
		return NULL;
	}

	if (!(cEnv->CC = FUNC7())) {
		goto fail;
	}

	cEnv->SFLIBPATH = FUNC10 ("SFLIBPATH");
	if (!cEnv->SFLIBPATH) {
		output = FUNC9 ("r2 -hh | grep INCDIR | awk '{print $2}'");
		if (!output || (output[0] == '\0')) {
			FUNC1 ("Cannot find SFLIBPATH env var.\n"
		  		 "Please define it, or fix r2 installation.\n");
			goto fail;
		}

		output[FUNC13 (output) - 1] = '\0'; // strip the ending '\n'
		if (!(cEnv->SFLIBPATH = FUNC8 ("%s/sflib", output))) {
			goto fail;
		}
	}

	cEnv->JMP = FUNC4 (arch) ? "b" : "jmp";

	// TODO: Missing -Os .. caused some rip-relative LEA to be MOVQ on PIE in CLANG.. so sad
	if (FUNC3 (os)) {
		cEnv->OBJCOPY = "gobjcopy";
		cEnv->FMT = "mach0";
		if (!FUNC11 (arch, "x86")) {
			if (bits == 32) {
				cEnv->CFLAGS = FUNC12 ("-arch i386 -fPIC -fPIE");
				cEnv->LDFLAGS = FUNC12 ("-arch i386 -shared -c -fPIC -fPIE -pie");
			} else {
				cEnv->CFLAGS = FUNC12 ("-arch x86_64 -fPIC -fPIE");
				cEnv->LDFLAGS = FUNC12 ("-arch x86_64 -shared -c -fPIC -fPIE -pie");
			}
		} else {
			cEnv->CFLAGS = FUNC12 ("-shared -c -fPIC -pie -fPIE");
			cEnv->LDFLAGS = FUNC12 ("-shared -c -fPIC -pie -fPIE");
		}
		cEnv->SHDR = FUNC8 ("\n.text\n%s _main\n", cEnv->JMP);
	} else {
		cEnv->OBJCOPY = "objcopy";
		cEnv->FMT = "elf";
		cEnv->SHDR = FUNC8 ("\n.section .text\n.globl  main\n"
				   "// .type   main, @function\n%s main\n", cEnv->JMP);
		if (!FUNC11 (arch, "x86")) {
			if (bits == 32) {
				cEnv->CFLAGS = FUNC12 ("-fPIC -fPIE -pie -fpic -m32");
				cEnv->LDFLAGS = FUNC12 ("-fPIC -fPIE -pie -fpic -m32");
			} else {
				cEnv->CFLAGS = FUNC12 ("-fPIC -fPIE -pie -fpic -m64");
				cEnv->LDFLAGS = FUNC12 ("-fPIC -fPIE -pie -fpic -m64");
			}
		} else {
			cEnv->CFLAGS = FUNC12 ("-fPIC -fPIE -pie -fpic -nostartfiles");
			cEnv->LDFLAGS = FUNC12 ("-fPIC -fPIE -pie -fpic -nostartfiles");
		}
	}

	cEnv->TRIPLET = FUNC8 ("%s-%s-%d", os, arch, bits);

	if (!FUNC11 (os, "windows")) {
		cEnv->TEXT = ".text";
		cEnv->FMT = "pe";
	} else if (FUNC3(os)) {
		//cEnv->TEXT = "0.__TEXT.__text";
		cEnv->TEXT = "0..__text";
	} else {
		cEnv->TEXT = ".text";
	}

	use_clang = false;
	if (!FUNC11 (cEnv->TRIPLET, "darwin-arm-64")) {
		FUNC2 (cEnv->CC);
		cEnv->CC = FUNC12 ("xcrun --sdk iphoneos gcc -arch arm64 -miphoneos-version-min=0.0");
		use_clang = true;
		cEnv->TEXT = "0.__TEXT.__text";
	} else if (!FUNC11 (cEnv->TRIPLET, "darwin-arm-32")) {
		FUNC2 (cEnv->CC);
		cEnv->CC = FUNC12 ("xcrun --sdk iphoneos gcc -arch armv7 -miphoneos-version-min=0.0");
		use_clang = true;
		cEnv->TEXT = "0.__TEXT.__text";
	}

	buffer = FUNC8 ("%s -fno-stack-protector -nostdinc -include '%s'/'%s'/sflib.h",
	  		cEnv->CFLAGS, cEnv->SFLIBPATH, cEnv->TRIPLET);
	if (!buffer) {
		goto fail;
	}
	FUNC2 (cEnv->CFLAGS);
	cEnv->CFLAGS = FUNC12 (buffer);

	if (use_clang) {
		FUNC2 (buffer);
		buffer = FUNC8 ("%s -fomit-frame-pointer"
		  		" -fno-zero-initialized-in-bss", cEnv->CFLAGS);
		if (!buffer) {
			goto fail;
		}
		FUNC2 (cEnv->CFLAGS);
		cEnv->CFLAGS = FUNC12 (buffer);
	} else {
		FUNC2 (buffer);
		buffer = FUNC8 ("%s -z execstack -fomit-frame-pointer"
				" -finline-functions -fno-zero-initialized-in-bss", cEnv->CFLAGS);
		if (!buffer) {
			goto fail;
		}
		FUNC2 (cEnv->CFLAGS);
		cEnv->CFLAGS = FUNC12 (buffer);
	}
	FUNC2 (buffer);
	buffer = FUNC8 ("%s -nostdlib", cEnv->LDFLAGS);
	if (!buffer) {
		goto fail;
	}
	FUNC2 (cEnv->LDFLAGS);
	cEnv->LDFLAGS = FUNC12 (buffer);

	if (FUNC5 (cEnv)) {
		FUNC1 ("Error with cEnv allocation!\n");
		goto fail;
	}

	FUNC2 (buffer);
	FUNC2 (output);
	return cEnv;

fail:
	FUNC2 (buffer);
	FUNC2 (output);
	FUNC6 (cEnv);
	return NULL;
}