#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ zend_ffi_dcl ;

/* Variables and functions */
 int YY_ID ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int YY_STRUCT ; 
 int YY_UNION ; 
 int YY__LBRACE ; 
 int /*<<< orphan*/  YY___ATTRIBUTE ; 
 int /*<<< orphan*/  YY___ATTRIBUTE__ ; 
 int /*<<< orphan*/  YY___CDECL ; 
 int /*<<< orphan*/  YY___DECLSPEC ; 
 int /*<<< orphan*/  YY___FASTCALL ; 
 int /*<<< orphan*/  YY___STDCALL ; 
 int /*<<< orphan*/  YY___THISCALL ; 
 int /*<<< orphan*/  YY___VECTORCALL ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_STRUCT ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_UNION ; 
 int FUNC1 () ; 
 int FUNC2 (int,char const**,size_t*) ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,size_t,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(int sym, zend_ffi_dcl *dcl) {
	if (sym == YY_STRUCT) {
		sym = FUNC1();
		dcl->flags |= ZEND_FFI_DCL_STRUCT;
	} else if (sym == YY_UNION) {
		sym = FUNC1();
		dcl->flags |= ZEND_FFI_DCL_UNION;
	} else {
		FUNC5("unexpected", sym);
	}
	if (FUNC0(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
		sym = FUNC3(sym, dcl);
	}
	if (sym == YY_ID) {
		const char *name;
		size_t name_len;
		sym = FUNC2(sym, &name, &name_len);
		FUNC6(name, name_len, dcl, 1);
		if (sym == YY__LBRACE) {
			sym = FUNC4(sym, dcl);
			FUNC6(name, name_len, dcl, 0);
		}
	} else if (sym == YY__LBRACE) {
		FUNC7(dcl);
		sym = FUNC4(sym, dcl);
	} else {
		FUNC5("unexpected", sym);
	}
	return sym;
}