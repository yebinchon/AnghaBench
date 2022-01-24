#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  entry_map; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ logger ;
struct TYPE_9__ {int /*<<< orphan*/  logger_buf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  default_entries ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  logger_key ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__ settings ; 

logger *FUNC7(void) {
    FUNC0("LOGGER: Creating and linking new logger instance\n");
    logger *l = FUNC2(1, sizeof(logger));
    if (l == NULL) {
        return NULL;
    }

    l->buf = FUNC1(settings.logger_buf_size);
    if (l->buf == NULL) {
        FUNC3(l);
        return NULL;
    }

    l->entry_map = default_entries;

    FUNC5(&l->mutex, NULL);
    FUNC6(logger_key, l);

    /* add to list of loggers */
    FUNC4(l);
    return l;
}