#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zend_ffi_dcl ;
typedef  int zend_bool ;

/* Variables and functions */
 int YY_ID ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int YY__LBRACK ; 
 int YY__LPAREN ; 
 int YY__RPAREN ; 
 int YY__STAR ; 
 int /*<<< orphan*/  YY___ATTRIBUTE ; 
 int /*<<< orphan*/  YY___ATTRIBUTE__ ; 
 int /*<<< orphan*/  YY___CDECL ; 
 int /*<<< orphan*/  YY___DECLSPEC ; 
 int /*<<< orphan*/  YY___FASTCALL ; 
 int /*<<< orphan*/  YY___STDCALL ; 
 int /*<<< orphan*/  YY___THISCALL ; 
 int /*<<< orphan*/  YY___VECTORCALL ; 
 int /*<<< orphan*/  ZEND_FFI_DCL_CHAR ; 
 int FUNC1 () ; 
 int FUNC2 (int,char const**,size_t*) ; 
 int FUNC3 (int,TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (int,TYPE_1__*) ; 
 int FUNC5 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(int sym, zend_ffi_dcl *dcl, const char **name, size_t *name_len) {
	zend_ffi_dcl nested_dcl = {&ZEND_FFI_DCL_CHAR, 0, 0, 0, NULL};
	zend_bool nested = 0;
	if (sym == YY__STAR) {
		sym = FUNC5(sym, dcl);
	}
	if (sym == YY_ID) {
		sym = FUNC2(sym, name, name_len);
	} else if (sym == YY__LPAREN) {
		sym = FUNC1();
		if (FUNC0(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
			sym = FUNC4(sym, &nested_dcl);
		}
		sym = FUNC8(sym, &nested_dcl, name, name_len);
		if (sym != YY__RPAREN) {
			FUNC6("')' expected, got", sym);
		}
		sym = FUNC1();
		nested = 1;
	} else {
		FUNC6("unexpected", sym);
	}
	if (sym == YY__LBRACK || sym == YY__LPAREN) {
		sym = FUNC3(sym, dcl, &nested_dcl);
	}
	if (nested) FUNC7(dcl, &nested_dcl);
	return sym;
}