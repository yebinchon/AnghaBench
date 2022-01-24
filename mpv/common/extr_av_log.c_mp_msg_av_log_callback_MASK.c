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
typedef  int /*<<< orphan*/  va_list ;
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {char* (* item_name ) (void*) ;} ;
typedef  TYPE_1__ AVClass ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 struct mp_log* FUNC3 (void*) ; 
 int /*<<< orphan*/  log_lock ; 
 int /*<<< orphan*/  log_mpv_instance ; 
 int log_print_prefix ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,int,char*,char*) ; 
 scalar_t__ FUNC5 (struct mp_log*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void *ptr, int level, const char *fmt,
                                   va_list vl)
{
    AVClass *avc = ptr ? *(AVClass **)ptr : NULL;
    int mp_level = FUNC2(level);

    // Note: mp_log is thread-safe, but destruction of the log instances is not.
    FUNC6(&log_lock);

    if (!log_mpv_instance) {
        FUNC7(&log_lock);
        // Fallback to stderr
        FUNC11(stderr, fmt, vl);
        return;
    }

    struct mp_log *log = FUNC3(ptr);

    if (FUNC5(log, mp_level)) {
        char buffer[4096] = "";
        int pos = 0;
        const char *prefix = avc ? avc->item_name(ptr) : NULL;
        if (log_print_prefix && prefix)
            pos = FUNC8(buffer, sizeof(buffer), "%s: ", prefix);
        log_print_prefix = fmt[FUNC9(fmt) - 1] == '\n';

        pos = FUNC1(FUNC0(pos, 0), sizeof(buffer));
        FUNC12(buffer + pos, sizeof(buffer) - pos, fmt, vl);

        FUNC4(log, mp_level, "%s", buffer);
    }

    FUNC7(&log_lock);
}