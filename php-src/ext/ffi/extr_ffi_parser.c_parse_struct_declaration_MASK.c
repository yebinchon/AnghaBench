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
typedef  int /*<<< orphan*/  zend_ffi_dcl ;

/* Variables and functions */
 int YY_ID ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int YY__COLON ; 
 int YY__COMMA ; 
 int YY__LPAREN ; 
 int YY__RBRACE ; 
 int YY__SEMICOLON ; 
 int YY__STAR ; 
 int /*<<< orphan*/  YY___ATTRIBUTE ; 
 int /*<<< orphan*/  YY___ATTRIBUTE__ ; 
 int /*<<< orphan*/  YY___CDECL ; 
 int /*<<< orphan*/  YY___DECLSPEC ; 
 int /*<<< orphan*/  YY___FASTCALL ; 
 int /*<<< orphan*/  YY___STDCALL ; 
 int /*<<< orphan*/  YY___THISCALL ; 
 int /*<<< orphan*/  YY___VECTORCALL ; 
 int /*<<< orphan*/  ZEND_FFI_ATTR_INIT ; 
 int FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(int sym, zend_ffi_dcl *struct_dcl) {
	zend_ffi_dcl common_field_dcl = ZEND_FFI_ATTR_INIT;
	sym = FUNC3(sym, &common_field_dcl);
	if (sym == YY__SEMICOLON || sym == YY__RBRACE) {
		FUNC6(struct_dcl, &common_field_dcl);
	} else if (sym == YY__STAR || sym == YY_ID || sym == YY__LPAREN || sym == YY__COLON) {
		sym = FUNC4(sym, struct_dcl, &common_field_dcl);
		while (sym == YY__COMMA) {
			sym = FUNC1();
			zend_ffi_dcl field_dcl = common_field_dcl;
			if (FUNC0(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
				sym = FUNC2(sym, &field_dcl);
			}
			sym = FUNC4(sym, struct_dcl, &field_dcl);
		}
	} else {
		FUNC5("unexpected", sym);
	}
	return sym;
}