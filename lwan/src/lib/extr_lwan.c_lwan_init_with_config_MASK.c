#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lwan_config {int dummy; } ;
struct TYPE_3__ {int count; unsigned int max_fd; } ;
struct TYPE_4__ {int n_threads; void* config_file_path; void* listener; } ;
struct lwan {int n_cpus; TYPE_1__ thread; TYPE_2__ config; } ;
typedef  scalar_t__ rlim_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (struct lwan*,size_t) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC8 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct lwan_config const*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct lwan*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct lwan*,struct lwan_config const*) ; 

void FUNC20(struct lwan *l, const struct lwan_config *config)
{
    /* Load defaults */
    FUNC16(l, 0, sizeof(*l));
    FUNC15(&l->config, config, sizeof(*config));
    l->config.listener = FUNC1(l->config.listener);
    l->config.config_file_path = FUNC1(l->config.config_file_path);

    /* Initialize status first, as it is used by other things during
     * their initialization. */
    FUNC11(l);

    /* These will only print debugging messages. Debug messages are always
     * printed if we're on a debug build, so the quiet setting will be
     * respected. */
    FUNC5();
    FUNC13();

    FUNC19(l, config);

    FUNC7(l);

    /* Continue initialization as normal. */
    FUNC9("Initializing lwan web server");

    l->n_cpus = FUNC2();
    if (!l->config.n_threads) {
        l->thread.count = l->n_cpus;
        if (l->thread.count == 1)
            l->thread.count = 2;
    } else if (l->config.n_threads > 3 * l->n_cpus) {
        l->thread.count = (short unsigned int)(l->n_cpus * 3);

        FUNC12("%d threads requested, but only %d online CPUs; "
                            "capping to %d threads",
                            l->config.n_threads, l->n_cpus, 3 * l->n_cpus);
    } else if (l->config.n_threads > 255) {
        l->thread.count = 256;

        FUNC12("%d threads requested, but max 256 supported",
            l->config.n_threads);
    } else {
        l->thread.count = l->config.n_threads;
    }

    rlim_t max_open_files = FUNC17();
    FUNC0(l, (size_t)max_open_files);

    l->thread.max_fd = (unsigned)max_open_files / (unsigned)l->thread.count;
    FUNC10("Using %d threads, maximum %d sockets per thread",
                     l->thread.count, l->thread.max_fd);

    FUNC18(SIGPIPE, SIG_IGN);

    FUNC6();
    FUNC14(l);
    FUNC8(l);
    FUNC4();
    FUNC3(l);
}