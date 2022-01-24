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

/* Variables and functions */
 scalar_t__ FUNC0 (char,char) ; 
 scalar_t__ FUNC1 (char,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC3 (char,char) ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (long,long) ; 
 scalar_t__ FUNC9 (long,long) ; 
 scalar_t__ FUNC10 (long,long) ; 
 scalar_t__ FUNC11 (char*,int,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (size_t,int) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC19 (unsigned char,int) ; 
 scalar_t__ FUNC20 (unsigned long,int) ; 

__attribute__((used)) static int FUNC21(void)
{
    int i = 4;
    long l = -9000;
    char c = 'd';
    unsigned char uc = 22;
    unsigned long ul = 500;
    size_t st = 1234;
    char buf[4] = { 0 }, *p = buf;

           /* int */
    return FUNC4(i++, 4)
           && FUNC4(i, 5)
           && FUNC5(++i, 5)
           && FUNC6(5, i++)
           && FUNC7(--i, 5)
           && FUNC4(12, i *= 2)
           /* Long */
           && FUNC8(l--, -9000L)
           && FUNC8(++l, -9000L)
           && FUNC10(-9000L, l /= 2)
           && FUNC9(--l, -4500L)
           /* char */
           && FUNC0(++c, 'e')
           && FUNC0('e', c--)
           && FUNC3('d', --c)
           && FUNC1('b', --c)
           && FUNC2(c++, 'c')
           /* unsigned char */
           && FUNC19(22, uc++)
           && FUNC19(uc /= 2, 11)
           && FUNC20(ul ^= 1, 501)
           && FUNC20(502, ul ^= 3)
           && FUNC20(ul = ul * 3 - 6, 1500)
           /* size_t */
           && FUNC16((--i, st++), 1234)
           && FUNC16(st, 1235)
           && FUNC4(11, i)
           /* pointers */
           && FUNC14(p++, buf)
           && FUNC14(buf + 2, ++p)
           && FUNC14(buf, p -= 2)
           && FUNC13(++p)
           && FUNC14(p, buf + 1)
           && FUNC15(p = NULL)
           /* strings */
           && FUNC17(p = &("123456"[1]), "23456")
           && FUNC17("3456", ++p)
           && FUNC18(p++, "456")
           /* memory */
           && FUNC11(--p, sizeof("3456"), "3456", sizeof("3456"))
           && FUNC12(p++, sizeof("456"), "456", sizeof("456"))
           && FUNC11(p--, sizeof("456"), "456", sizeof("456"));
}