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
struct input_ctx {int /*<<< orphan*/  log; struct cmd_bind_section* cmd_bind_sections; } ;
struct cmd_bind_section {int num_binds; TYPE_1__* binds; struct cmd_bind_section* next; } ;
typedef  int /*<<< orphan*/  mp_cmd_t ;
struct TYPE_2__ {int* keys; scalar_t__ num_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_ctx*,char*,char*) ; 
 int MP_KEY_CLOSE_WIN ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*,char**,TYPE_1__*) ; 
 char* FUNC3 (int*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const**) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static mp_cmd_t *FUNC8(struct input_ctx *ictx, int code)
{
    if (code == MP_KEY_CLOSE_WIN) {
        FUNC1(ictx,
            "CLOSE_WIN was received. This pseudo key can be remapped too,\n"
            "but --input-test will always quit when receiving it.\n");
        const char *args[] = {"quit", NULL};
        mp_cmd_t *res = FUNC4(ictx->log, args);
        return res;
    }

    char *key_buf = FUNC3(&code, 1);
    char *msg = FUNC5(NULL, "Key %s is bound to:\n", key_buf);
    FUNC7(key_buf);

    int count = 0;
    for (struct cmd_bind_section *bs = ictx->cmd_bind_sections;
         bs; bs = bs->next)
    {
        for (int i = 0; i < bs->num_binds; i++) {
            if (bs->binds[i].num_keys && bs->binds[i].keys[0] == code) {
                count++;
                if (count > 1)
                    msg = FUNC6(msg, "\n");
                msg = FUNC6(msg, "%d. ", count);
                FUNC2(ictx, &msg, &bs->binds[i]);
            }
        }
    }

    if (!count)
        msg = FUNC6(msg, "(nothing)");

    FUNC0(ictx, "%s\n", msg);
    const char *args[] = {"show-text", msg, NULL};
    mp_cmd_t *res = FUNC4(ictx->log, args);
    FUNC7(msg);
    return res;
}