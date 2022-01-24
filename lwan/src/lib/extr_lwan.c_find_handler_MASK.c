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
struct lwan_handler_info {void* handler; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  lwan_handler ;

/* Variables and functions */
 struct lwan_handler_info* __start_lwan_handler ; 
 struct lwan_handler_info const* __stop_lwan_handler ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) __attribute__((no_sanitize_address))
static void *FUNC1(const char *name)
{
    extern const struct lwan_handler_info FUNC2(lwan_handler);
    extern const struct lwan_handler_info FUNC3(lwan_handler);
    const struct lwan_handler_info *handler;

    for (handler = __start_lwan_handler; handler < __stop_lwan_handler;
         handler++) {
        if (FUNC0(handler->name, name))
            return handler->handler;
    }

    return NULL;
}