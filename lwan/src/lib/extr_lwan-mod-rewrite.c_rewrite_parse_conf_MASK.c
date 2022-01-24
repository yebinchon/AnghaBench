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
struct private_data {int dummy; } ;
struct config_line {int type; int /*<<< orphan*/  key; } ;
struct config {int dummy; } ;

/* Variables and functions */
#define  CONFIG_LINE_TYPE_LINE 130 
#define  CONFIG_LINE_TYPE_SECTION 129 
#define  CONFIG_LINE_TYPE_SECTION_END 128 
 int /*<<< orphan*/  FUNC0 (struct config*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct config*) ; 
 struct config_line* FUNC2 (struct config*) ; 
 int /*<<< orphan*/  FUNC3 (struct private_data*,struct config*,struct config_line const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC5(void *instance, struct config *config)
{
    struct private_data *pd = instance;
    const struct config_line *line;

    while ((line = FUNC2(config))) {
        switch (line->type) {
        case CONFIG_LINE_TYPE_LINE:
            FUNC0(config, "Unknown option: %s", line->key);
            break;
        case CONFIG_LINE_TYPE_SECTION:
            if (FUNC4(line->key, "pattern")) {
                FUNC3(pd, config, line);
            } else {
                FUNC0(config, "Unknown section: %s", line->key);
            }
            break;
        case CONFIG_LINE_TYPE_SECTION_END:
            break;
        }
    }

    return !FUNC1(config);
}