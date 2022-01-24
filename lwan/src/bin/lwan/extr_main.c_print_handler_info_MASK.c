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
struct lwan_handler_info {char* name; } ;
typedef  int /*<<< orphan*/  lwan_handler ;

/* Variables and functions */
 struct lwan_handler_info* __start_lwan_handler ; 
 struct lwan_handler_info const* __stop_lwan_handler ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(void)
{
    extern const struct lwan_handler_info FUNC2(lwan_handler);
    extern const struct lwan_handler_info FUNC3(lwan_handler);
    const struct lwan_handler_info *handler;

    FUNC0("Available handlers:\n");
    for (handler = __start_lwan_handler; handler < __stop_lwan_handler; handler++) {
        FUNC0(" * %s\n", handler->name);
    }
}