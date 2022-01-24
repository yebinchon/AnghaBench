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
struct config_pair {int key; char* value; int /*<<< orphan*/  value_len; } ;
struct config_option {scalar_t__ type; int offset; int /*<<< orphan*/  max_len; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ERROR_BUFFER_OVERFLOW ; 
 int ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_INT ; 
 int FUNC2 (struct config_pair*,struct config_option const**) ; 
 int FUNC3 (char*,struct config_pair*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
    struct idmap_config *config,
    const char *filename)
{
    char buffer[1024], *pos;
    FILE *file;
    struct config_pair pair;
    const struct config_option *option;
    int line = 0;
    int status = NO_ERROR;

    /* open the file */
    file = FUNC7(filename, "r");
    if (file == NULL) {
        FUNC4("config_load() failed to open file '%s'\n", filename);
        goto out;
    }

    /* read each line */
    while (FUNC6(buffer, sizeof(buffer), file)) {
        line++;

        /* skip whitespace */
        pos = buffer;
        while (FUNC8(*pos)) pos++;

        /* skip comments and empty lines */
        if (*pos == '#' || *pos == 0)
            continue;

        /* parse line into a key=value pair */
        status = FUNC3(buffer, &pair);
        if (status) {
            FUNC4("error on line %d: %s\n", line, buffer);
            break;
        }

        /* find the config_option by key */
        status = FUNC2(&pair, &option);
        if (status) {
            FUNC4("unrecognized option '%s' on line %d: %s\n",
                pair.key, line, buffer);
            status = ERROR_INVALID_PARAMETER;
            break;
        }

        if (option->type == TYPE_INT) {
            if (!FUNC9(pair.value, (UINT*)((char*)config + option->offset))) {
                status = ERROR_INVALID_PARAMETER;
                FUNC4("expected a number on line %d: %s=\"%s\"\n",
                    line, pair.key, pair.value);
                break;
            }
        } else {
            if (FUNC0(FUNC1((char*)config + option->offset,
                    option->max_len, pair.value, pair.value_len))) {
                status = ERROR_BUFFER_OVERFLOW;
                FUNC4("overflow on line %d: %s=\"%s\"\n",
                    line, pair.key, pair.value);
                break;
            }
        }
    }

    FUNC5(file);
out:
    return status;
}