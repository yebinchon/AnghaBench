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
struct idmap_config {int dummy; } ;
struct config_option {int offset; scalar_t__ type; int /*<<< orphan*/  max_len; int /*<<< orphan*/  def; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int FUNC0 (struct config_option*) ; 
 int ERROR_BUFFER_OVERFLOW ; 
 int ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_INT ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct config_option* g_options ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
    struct idmap_config *config)
{
    const struct config_option *option;
    const int count = FUNC0(g_options);
    char *dst;
    int i, status = NO_ERROR;

    for (i = 0; i < count; i++) {
        option = &g_options[i];
        dst = (char*)config + option->offset;

        if (option->type == TYPE_INT) {
            if (!FUNC4(option->def, (UINT*)dst)) {
                status = ERROR_INVALID_PARAMETER;
                FUNC3("failed to parse default value of %s=\"%s\": "
                    "expected a number\n", option->key, option->def);
                break;
            }
        } else {
            if (FUNC1(FUNC2(dst, option->max_len, option->def))) {
                status = ERROR_BUFFER_OVERFLOW;
                FUNC3("failed to parse default value of %s=\"%s\": "
                    "buffer overflow > %u\n", option->key, option->def,
                    option->max_len);
                break;
            }
        }
    }
    return status;
}