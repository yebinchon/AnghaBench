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
typedef  struct lwan_request lwan_request ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct lwan_request* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(lua_State *L,
                                const char *(*getter)(struct lwan_request *req,
                                                      const char *key))
{
    struct lwan_request *request = FUNC3(L);
    const char *key_str = FUNC2(L, -1);

    const char *value = getter(request, key_str);
    if (!value)
        FUNC0(L);
    else
        FUNC1(L, value);

    return 1;
}