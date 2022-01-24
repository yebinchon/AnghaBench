#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct logger_stats {int /*<<< orphan*/  worker_dropped; int /*<<< orphan*/  worker_written; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; scalar_t__ dropped; scalar_t__ written; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ logger ;
struct TYPE_7__ {scalar_t__ pad; scalar_t__ size; } ;
typedef  TYPE_2__ logentry ;
typedef  enum logger_parse_entry_ret { ____Placeholder_logger_parse_entry_ret } logger_parse_entry_ret ;

/* Variables and functions */
 int LOGGER_PARSE_ENTRY_OK ; 
 int LOGGER_PARSE_SCRATCH ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_2__*,struct logger_stats*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct logger_stats*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ watcher_count ; 

__attribute__((used)) static int FUNC9(logger *l, struct logger_stats *ls) {
    unsigned int size;
    unsigned int pos = 0;
    unsigned char *data;
    char scratch[LOGGER_PARSE_SCRATCH];
    logentry *e;
    FUNC7(&l->mutex);
    data = FUNC2(l->buf, &size);
    FUNC8(&l->mutex);

    if (data == NULL) {
        return 0;
    }
    FUNC0("LOGGER: Got %d bytes from bipbuffer\n", size);

    /* parse buffer */
    while (pos < size && watcher_count > 0) {
        enum logger_parse_entry_ret ret;
        int scratch_len = 0;
        e = (logentry *) (data + pos);
        ret = FUNC5(e, ls, scratch, &scratch_len);
        if (ret != LOGGER_PARSE_ENTRY_OK) {
            /* TODO: stats counter */
            FUNC4(stderr, "LOGGER: Failed to parse log entry\n");
        } else {
            FUNC6(e, ls, scratch, scratch_len);
        }
        pos += sizeof(logentry) + e->size + e->pad;
    }
    FUNC1(pos <= size);

    FUNC7(&l->mutex);
    data = FUNC3(l->buf, size);
    ls->worker_written += l->written;
    ls->worker_dropped += l->dropped;
    l->written = 0;
    l->dropped = 0;
    FUNC8(&l->mutex);
    if (data == NULL) {
        FUNC4(stderr, "LOGGER: unexpectedly couldn't advance buf pointer\n");
        FUNC1(0);
    }
    return size; /* maybe the count of objects iterated? */
}