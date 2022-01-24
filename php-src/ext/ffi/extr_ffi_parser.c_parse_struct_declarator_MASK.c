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
typedef  int /*<<< orphan*/  zend_ffi_val ;
typedef  int /*<<< orphan*/  zend_ffi_dcl ;

/* Variables and functions */
 int YY_ID ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int YY__COLON ; 
 int /*<<< orphan*/  YY__COMMA ; 
 int YY__LPAREN ; 
 int /*<<< orphan*/  YY__RBRACE ; 
 int /*<<< orphan*/  YY__SEMICOLON ; 
 int YY__STAR ; 
 int /*<<< orphan*/  YY___ATTRIBUTE ; 
 int /*<<< orphan*/  YY___ATTRIBUTE__ ; 
 int /*<<< orphan*/  YY___CDECL ; 
 int /*<<< orphan*/  YY___DECLSPEC ; 
 int /*<<< orphan*/  YY___FASTCALL ; 
 int /*<<< orphan*/  YY___STDCALL ; 
 int /*<<< orphan*/  YY___THISCALL ; 
 int /*<<< orphan*/  YY___VECTORCALL ; 
 int FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(int sym, zend_ffi_dcl *struct_dcl, zend_ffi_dcl *field_dcl) {
	const char *name = NULL;
	size_t name_len = 0;
	zend_ffi_val bits;
	if (sym == YY__STAR || sym == YY_ID || sym == YY__LPAREN) {
		sym = FUNC4(sym, field_dcl, &name, &name_len);
		if (sym == YY__COLON) {
			sym = FUNC1();
			sym = FUNC3(sym, &bits);
			if (FUNC0(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
				sym = FUNC2(sym, field_dcl);
			}
			FUNC6(struct_dcl, name, name_len, field_dcl, &bits);
		} else if (FUNC0(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL,YY__COMMA,YY__SEMICOLON,YY__RBRACE), "\140\000\000\000\000\020\360\017\000\000\000\000\000")) {
			if (FUNC0(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000")) {
				sym = FUNC2(sym, field_dcl);
			}
			FUNC7(struct_dcl, name, name_len, field_dcl);
		} else {
			FUNC5("unexpected", sym);
		}
	} else if (sym == YY__COLON) {
		sym = FUNC1();
		sym = FUNC3(sym, &bits);
		FUNC6(struct_dcl, NULL, 0, field_dcl, &bits);
	} else {
		FUNC5("unexpected", sym);
	}
	return sym;
}