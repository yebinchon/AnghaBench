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
struct lua_State {int dummy; } ;
struct MasscanWrapper {struct Masscan* masscan; } ;
struct Masscan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASSCAN_CLASS ; 
 char* FUNC0 (struct lua_State*,int) ; 
 struct MasscanWrapper* FUNC1 (struct lua_State*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Masscan*,char const*,char const*) ; 

__attribute__((used)) static int FUNC3(struct lua_State *L)
{
    struct MasscanWrapper *wrapper;
    struct Masscan *masscan;
    const char *name;
    const char *value;
    
    wrapper = FUNC1(L, 1, MASSCAN_CLASS);
    masscan = wrapper->masscan;
    name = FUNC0(L, 2);
    value = FUNC0(L, 3);
    
    FUNC2(masscan, name, value);
    
    return 0;
}