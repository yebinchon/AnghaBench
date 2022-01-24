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
 scalar_t__ FUNC0 (int,int,char*) ; 
 int YY__COMMA ; 
 int YY__LPAREN ; 
 int YY__RPAREN ; 
#define  YY___ATTRIBUTE 135 
#define  YY___ATTRIBUTE__ 134 
#define  YY___CDECL 133 
#define  YY___DECLSPEC 132 
#define  YY___FASTCALL 131 
#define  YY___STDCALL 130 
#define  YY___THISCALL 129 
#define  YY___VECTORCALL 128 
 int /*<<< orphan*/  ZEND_FFI_ABI_CDECL ; 
 int /*<<< orphan*/  ZEND_FFI_ABI_FASTCALL ; 
 int /*<<< orphan*/  ZEND_FFI_ABI_STDCALL ; 
 int /*<<< orphan*/  ZEND_FFI_ABI_THISCALL ; 
 int /*<<< orphan*/  ZEND_FFI_ABI_VECTORCALL ; 
 int FUNC1 () ; 
 int FUNC2 (int,char const**,size_t*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int sym, zend_ffi_dcl *dcl) {
	const char *name;
	size_t name_len;
	zend_ffi_val val;
	do {
		switch (sym) {
			case YY___ATTRIBUTE:
			case YY___ATTRIBUTE__:
				sym = FUNC1();
				if (sym != YY__LPAREN) {
					FUNC5("'(' expected, got", sym);
				}
				sym = FUNC1();
				if (sym != YY__LPAREN) {
					FUNC5("'(' expected, got", sym);
				}
				sym = FUNC1();
				sym = FUNC4(sym, dcl);
				while (sym == YY__COMMA) {
					sym = FUNC1();
					sym = FUNC4(sym, dcl);
				}
				if (sym != YY__RPAREN) {
					FUNC5("')' expected, got", sym);
				}
				sym = FUNC1();
				if (sym != YY__RPAREN) {
					FUNC5("')' expected, got", sym);
				}
				sym = FUNC1();
				break;
			case YY___DECLSPEC:
				sym = FUNC1();
				if (sym != YY__LPAREN) {
					FUNC5("'(' expected, got", sym);
				}
				sym = FUNC1();
				do {
					sym = FUNC2(sym, &name, &name_len);
					if (sym == YY__LPAREN) {
						sym = FUNC1();
						sym = FUNC3(sym, &val);
						FUNC6(dcl, name, name_len, &val);
						if (sym != YY__RPAREN) {
							FUNC5("')' expected, got", sym);
						}
						sym = FUNC1();
					}
				} while (sym == YY_ID);
				if (sym != YY__RPAREN) {
					FUNC5("')' expected, got", sym);
				}
				sym = FUNC1();
				break;
			case YY___CDECL:
				sym = FUNC1();
				FUNC7(dcl, ZEND_FFI_ABI_CDECL);
				break;
			case YY___STDCALL:
				sym = FUNC1();
				FUNC7(dcl, ZEND_FFI_ABI_STDCALL);
				break;
			case YY___FASTCALL:
				sym = FUNC1();
				FUNC7(dcl, ZEND_FFI_ABI_FASTCALL);
				break;
			case YY___THISCALL:
				sym = FUNC1();
				FUNC7(dcl, ZEND_FFI_ABI_THISCALL);
				break;
			case YY___VECTORCALL:
				sym = FUNC1();
				FUNC7(dcl, ZEND_FFI_ABI_VECTORCALL);
				break;
			default:
				FUNC5("unexpected", sym);
		}
	} while (FUNC0(sym, (YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\000\000\000\000\360\017\000\000\000\000\000"));
	return sym;
}