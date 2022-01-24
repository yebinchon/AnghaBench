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
#define  YY_CHARACTER 150 
#define  YY_DECNUMBER 149 
#define  YY_FLOATNUMBER 148 
#define  YY_HEXNUMBER 147 
#define  YY_ID 146 
 int /*<<< orphan*/  FUNC0 (int,int const,char*) ; 
#define  YY_OCTNUMBER 145 
#define  YY_SIZEOF 144 
#define  YY_STRING 143 
#define  YY__ALIGNOF 142 
#define  YY__AND 141 
#define  YY__BANG 140 
#define  YY__LBRACK 139 
#define  YY__LPAREN 138 
#define  YY__MINUS 137 
#define  YY__MINUS_GREATER 136 
#define  YY__MINUS_MINUS 135 
#define  YY__PLUS 134 
#define  YY__PLUS_PLUS 133 
#define  YY__POINT 132 
 int YY__RBRACK ; 
 int YY__RPAREN ; 
#define  YY__STAR 131 
#define  YY__TILDE 130 
#define  YY___ALIGNOF 129 
#define  YY___ALIGNOF__ 128 
 int /*<<< orphan*/  ZEND_FFI_ATTR_INIT ; 
 int FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,char const**,size_t*) ; 
 int FUNC7 (int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int,int /*<<< orphan*/ *) ; 
 int FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(int sym, zend_ffi_val *val) {
	const char *name;
	size_t name_len;
	zend_ffi_dcl dcl = ZEND_FFI_ATTR_INIT;
	switch (sym) {
		case YY_ID:
			sym = FUNC6(sym, &name, &name_len);
			FUNC24(name, name_len, val);
			while (FUNC0(sym, (YY__LBRACK,YY__LPAREN,YY__POINT,YY__MINUS_GREATER,YY__PLUS_PLUS,YY__MINUS_MINUS), "\010\000\000\000\000\000\002\020\000\200\003\000\000")) {
				switch (sym) {
					case YY__LBRACK:
						sym = FUNC1();
						sym = FUNC10(sym);
						if (sym != YY__RBRACK) {
							FUNC15("']' expected, got", sym);
						}
						sym = FUNC1();
						break;
					case YY__LPAREN:
						sym = FUNC1();
						if (FUNC0(sym, (YY__LPAREN,YY_ID,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__STAR,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
							sym = FUNC10(sym);
						}
						if (sym != YY__RPAREN) {
							FUNC15("')' expected, got", sym);
						}
						sym = FUNC1();
						break;
					case YY__POINT:
						sym = FUNC1();
						sym = FUNC6(sym, &name, &name_len);
						break;
					case YY__MINUS_GREATER:
						sym = FUNC1();
						sym = FUNC6(sym, &name, &name_len);
						break;
					case YY__PLUS_PLUS:
						sym = FUNC1();
						break;
					default:
						sym = FUNC1();
						break;
				}
				FUNC25(val);
			}
			break;
		case YY_OCTNUMBER:
			sym = FUNC7(sym, val);
			break;
		case YY_DECNUMBER:
			sym = FUNC3(sym, val);
			break;
		case YY_HEXNUMBER:
			sym = FUNC5(sym, val);
			break;
		case YY_FLOATNUMBER:
			sym = FUNC4(sym, val);
			break;
		case YY_STRING:
			sym = FUNC8(sym, val);
			break;
		case YY_CHARACTER:
			sym = FUNC2(sym, val);
			break;
		case YY__LPAREN:
			sym = FUNC1();
			sym = FUNC11(sym, val);
			if (sym != YY__RPAREN) {
				FUNC15("')' expected, got", sym);
			}
			sym = FUNC1();
			break;
		case YY__PLUS_PLUS:
			sym = FUNC1();
			sym = FUNC26(sym, val);
			FUNC25(val);
			break;
		case YY__MINUS_MINUS:
			sym = FUNC1();
			sym = FUNC26(sym, val);
			FUNC25(val);
			break;
		case YY__AND:
			sym = FUNC1();
			sym = FUNC9(sym, val);
			FUNC25(val);
			break;
		case YY__STAR:
			sym = FUNC1();
			sym = FUNC9(sym, val);
			FUNC25(val);
			break;
		case YY__PLUS:
			sym = FUNC1();
			sym = FUNC9(sym, val);
			FUNC21(val);
			break;
		case YY__MINUS:
			sym = FUNC1();
			sym = FUNC9(sym, val);
			FUNC20(val);
			break;
		case YY__TILDE:
			sym = FUNC1();
			sym = FUNC9(sym, val);
			FUNC19(val);
			break;
		case YY__BANG:
			sym = FUNC1();
			sym = FUNC9(sym, val);
			FUNC18(val);
			break;
		case YY_SIZEOF:
			sym = FUNC1();
			if ((sym == YY__LPAREN) && FUNC13(sym)) {
				sym = FUNC1();
				sym = FUNC12(sym, &dcl);
				if (sym != YY__RPAREN) {
					FUNC15("')' expected, got", sym);
				}
				sym = FUNC1();
				FUNC22(val, &dcl);
			} else if (FUNC0(sym, (YY_ID,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER,YY__LPAREN,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__STAR,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
				sym = FUNC26(sym, val);
				FUNC23(val);
			} else {
				FUNC15("unexpected", sym);
			}
			break;
		case YY__ALIGNOF:
			sym = FUNC1();
			if (sym != YY__LPAREN) {
				FUNC15("'(' expected, got", sym);
			}
			sym = FUNC1();
			sym = FUNC12(sym, &dcl);
			if (sym != YY__RPAREN) {
				FUNC15("')' expected, got", sym);
			}
			sym = FUNC1();
			FUNC16(val, &dcl);
			break;
		case YY___ALIGNOF:
		case YY___ALIGNOF__:
			sym = FUNC1();
			if ((sym == YY__LPAREN) && FUNC14(sym)) {
				sym = FUNC1();
				sym = FUNC12(sym, &dcl);
				if (sym != YY__RPAREN) {
					FUNC15("')' expected, got", sym);
				}
				sym = FUNC1();
				FUNC16(val, &dcl);
			} else if (FUNC0(sym, (YY_ID,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER,YY__LPAREN,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__STAR,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
				sym = FUNC26(sym, val);
				FUNC17(val);
			} else {
				FUNC15("unexpected", sym);
			}
			break;
		default:
			FUNC15("unexpected", sym);
	}
	return sym;
}