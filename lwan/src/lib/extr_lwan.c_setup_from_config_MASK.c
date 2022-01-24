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
struct TYPE_3__ {unsigned short keep_alive_timeout; unsigned short n_threads; size_t max_post_data_size; int allow_post_temp_file; int /*<<< orphan*/  error_template; int /*<<< orphan*/  expires; void* allow_cors; void* proxy_protocol; void* reuse_port; void* quiet; } ;
struct lwan {TYPE_1__ config; int /*<<< orphan*/  url_map_trie; } ;
struct config_line {int type; int /*<<< orphan*/  key; int /*<<< orphan*/  value; } ;
struct config {int dummy; } ;
typedef  int /*<<< orphan*/  path_buf ;
struct TYPE_4__ {long keep_alive_timeout; long n_threads; scalar_t__ max_post_data_size; int /*<<< orphan*/  expires; int /*<<< orphan*/  allow_cors; int /*<<< orphan*/  proxy_protocol; int /*<<< orphan*/  reuse_port; int /*<<< orphan*/  quiet; } ;

/* Variables and functions */
#define  CONFIG_LINE_TYPE_LINE 130 
#define  CONFIG_LINE_TYPE_SECTION 129 
#define  CONFIG_LINE_TYPE_SECTION_END 128 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct config*) ; 
 int /*<<< orphan*/  FUNC1 (struct config*) ; 
 int /*<<< orphan*/  FUNC2 (struct config*,char*,...) ; 
 scalar_t__ FUNC3 (struct config*) ; 
 struct config* FUNC4 (char const*) ; 
 struct config_line* FUNC5 (struct config*) ; 
 TYPE_2__ default_config ; 
 int /*<<< orphan*/  destroy_urlmap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct config*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct config*,struct config_line const*,struct lwan*) ; 
 long FUNC14 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC19(struct lwan *lwan, const char *path)
{
    const struct config_line *line;
    struct config *conf;
    bool has_listener = false;
    char path_buf[PATH_MAX];

    if (!path)
        path = FUNC7(path_buf, sizeof(path_buf));
    FUNC9("Loading configuration file: %s", path);

    conf = FUNC4(path);
    if (!conf)
        return false;

    if (!FUNC11(&lwan->url_map_trie, destroy_urlmap))
        return false;

    while ((line = FUNC5(conf))) {
        switch (line->type) {
        case CONFIG_LINE_TYPE_LINE:
            if (FUNC17(line->key, "keep_alive_timeout")) {
                lwan->config.keep_alive_timeout = (unsigned short)FUNC14(
                    line->value, default_config.keep_alive_timeout);
            } else if (FUNC17(line->key, "quiet")) {
                lwan->config.quiet =
                    FUNC12(line->value, default_config.quiet);
            } else if (FUNC17(line->key, "reuse_port")) {
                lwan->config.reuse_port =
                    FUNC12(line->value, default_config.reuse_port);
            } else if (FUNC17(line->key, "proxy_protocol")) {
                lwan->config.proxy_protocol =
                    FUNC12(line->value, default_config.proxy_protocol);
            } else if (FUNC17(line->key, "allow_cors")) {
                lwan->config.allow_cors =
                    FUNC12(line->value, default_config.allow_cors);
            } else if (FUNC17(line->key, "expires")) {
                lwan->config.expires =
                    FUNC15(line->value, default_config.expires);
            } else if (FUNC17(line->key, "error_template")) {
                FUNC6(lwan->config.error_template);
                lwan->config.error_template = FUNC16(line->value);
            } else if (FUNC17(line->key, "threads")) {
                long n_threads =
                    FUNC14(line->value, default_config.n_threads);
                if (n_threads < 0)
                    FUNC2(conf, "Invalid number of threads: %ld",
                                 n_threads);
                lwan->config.n_threads = (unsigned short int)n_threads;
            } else if (FUNC17(line->key, "max_post_data_size")) {
                long max_post_data_size = FUNC14(
                    line->value, (long)default_config.max_post_data_size);
                if (max_post_data_size < 0)
                    FUNC2(conf, "Negative maximum post data size");
                else if (max_post_data_size > 128 * (1 << 20))
                    FUNC2(conf,
                                 "Maximum post data can't be over 128MiB");
                lwan->config.max_post_data_size = (size_t)max_post_data_size;
            } else if (FUNC17(line->key, "allow_temp_files")) {
                lwan->config.allow_post_temp_file =
                    !!FUNC18(line->value, "post");
            } else {
                FUNC2(conf, "Unknown config key: %s", line->key);
            }
            break;
        case CONFIG_LINE_TYPE_SECTION:
            if (FUNC17(line->key, "listener")) {
                if (!has_listener) {
                    FUNC13(conf, line, lwan);
                    has_listener = true;
                } else {
                    FUNC2(conf, "Only one listener supported");
                }
            } else if (FUNC17(line->key, "straitjacket")) {
                FUNC10(conf);
            } else {
                FUNC2(conf, "Unknown section type: %s", line->key);
            }
            break;
        case CONFIG_LINE_TYPE_SECTION_END:
            FUNC2(conf, "Unexpected section end");
        }
    }

    if (FUNC3(conf)) {
        FUNC8("Error on config file \"%s\", line %d: %s", path,
                             FUNC1(conf), FUNC3(conf));
    }

    FUNC0(conf);

    return true;
}