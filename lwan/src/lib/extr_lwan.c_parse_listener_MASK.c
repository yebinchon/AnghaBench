#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lwan_module {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  listener; } ;
struct lwan {TYPE_1__ config; } ;
struct config_line {int type; char* key; int /*<<< orphan*/  value; } ;
struct config {int dummy; } ;

/* Variables and functions */
#define  CONFIG_LINE_TYPE_LINE 130 
#define  CONFIG_LINE_TYPE_SECTION 129 
#define  CONFIG_LINE_TYPE_SECTION_END 128 
 int /*<<< orphan*/  FUNC0 (struct config*,char*,...) ; 
 struct config_line* FUNC1 (struct config*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct lwan_module* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct config*,struct config_line const*,struct lwan*,struct lwan_module const*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct config *c,
                           const struct config_line *l,
                           struct lwan *lwan)
{
    FUNC4(lwan->config.listener);
    lwan->config.listener = FUNC6(l->value);

    while ((l = FUNC1(c))) {
        switch (l->type) {
        case CONFIG_LINE_TYPE_LINE:
            FUNC0(c, "Expecting prefix section");
            return;
        case CONFIG_LINE_TYPE_SECTION:
            if (l->key[0] == '&') {
                void *handler = FUNC2(l->key + 1);
                if (handler) {
                    FUNC5(c, l, lwan, NULL, handler);
                    continue;
                }

                FUNC0(c, "Could not find handler name: %s", l->key + 1);
                return;
            }

            const struct lwan_module *module = FUNC3(l->key);
            if (module) {
                FUNC5(c, l, lwan, module, NULL);
                continue;
            }

            FUNC0(c, "Invalid section or module not found: %s", l->key);
            return;
        case CONFIG_LINE_TYPE_SECTION_END:
            return;
        }
    }

    FUNC0(c, "Expecting section end while parsing listener");
}