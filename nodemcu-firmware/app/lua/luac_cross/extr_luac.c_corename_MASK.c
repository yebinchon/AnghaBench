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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  TString ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static TString *FUNC6(lua_State *L, const TString *filename)
{
 const char *fn = FUNC0(filename)+1;
 const char *s = FUNC5(fn, '/');
 if (!s) s = FUNC5(fn, '\\');
 s = s ? s + 1 : fn;
 while (*s == '.') s++;
 const char *e = FUNC3(s, '.');
 int l = e ? e - s: FUNC4(s);
 return l ? FUNC2 (L, s, l) : FUNC1(L, fn);
}