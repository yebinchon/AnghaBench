
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short keep_alive_timeout; unsigned short n_threads; size_t max_post_data_size; int allow_post_temp_file; int error_template; int expires; void* allow_cors; void* proxy_protocol; void* reuse_port; void* quiet; } ;
struct lwan {TYPE_1__ config; int url_map_trie; } ;
struct config_line {int type; int key; int value; } ;
struct config {int dummy; } ;
typedef int path_buf ;
struct TYPE_4__ {long keep_alive_timeout; long n_threads; scalar_t__ max_post_data_size; int expires; int allow_cors; int proxy_protocol; int reuse_port; int quiet; } ;





 int PATH_MAX ;
 int config_close (struct config*) ;
 int config_cur_line (struct config*) ;
 int config_error (struct config*,char*,...) ;
 scalar_t__ config_last_error (struct config*) ;
 struct config* config_open (char const*) ;
 struct config_line* config_read_line (struct config*) ;
 TYPE_2__ default_config ;
 int destroy_urlmap ;
 int free (int ) ;
 char* lwan_get_config_path (char*,int) ;
 int lwan_status_critical (char*,char const*,int ,scalar_t__) ;
 int lwan_status_info (char*,char const*) ;
 int lwan_straitjacket_enforce_from_config (struct config*) ;
 int lwan_trie_init (int *,int ) ;
 void* parse_bool (int ,int ) ;
 int parse_listener (struct config*,struct config_line const*,struct lwan*) ;
 long parse_long (int ,long) ;
 int parse_time_period (int ,int ) ;
 int strdup (int ) ;
 int streq (int ,char*) ;
 int strstr (int ,char*) ;

__attribute__((used)) static bool setup_from_config(struct lwan *lwan, const char *path)
{
    const struct config_line *line;
    struct config *conf;
    bool has_listener = 0;
    char path_buf[PATH_MAX];

    if (!path)
        path = lwan_get_config_path(path_buf, sizeof(path_buf));
    lwan_status_info("Loading configuration file: %s", path);

    conf = config_open(path);
    if (!conf)
        return 0;

    if (!lwan_trie_init(&lwan->url_map_trie, destroy_urlmap))
        return 0;

    while ((line = config_read_line(conf))) {
        switch (line->type) {
        case 130:
            if (streq(line->key, "keep_alive_timeout")) {
                lwan->config.keep_alive_timeout = (unsigned short)parse_long(
                    line->value, default_config.keep_alive_timeout);
            } else if (streq(line->key, "quiet")) {
                lwan->config.quiet =
                    parse_bool(line->value, default_config.quiet);
            } else if (streq(line->key, "reuse_port")) {
                lwan->config.reuse_port =
                    parse_bool(line->value, default_config.reuse_port);
            } else if (streq(line->key, "proxy_protocol")) {
                lwan->config.proxy_protocol =
                    parse_bool(line->value, default_config.proxy_protocol);
            } else if (streq(line->key, "allow_cors")) {
                lwan->config.allow_cors =
                    parse_bool(line->value, default_config.allow_cors);
            } else if (streq(line->key, "expires")) {
                lwan->config.expires =
                    parse_time_period(line->value, default_config.expires);
            } else if (streq(line->key, "error_template")) {
                free(lwan->config.error_template);
                lwan->config.error_template = strdup(line->value);
            } else if (streq(line->key, "threads")) {
                long n_threads =
                    parse_long(line->value, default_config.n_threads);
                if (n_threads < 0)
                    config_error(conf, "Invalid number of threads: %ld",
                                 n_threads);
                lwan->config.n_threads = (unsigned short int)n_threads;
            } else if (streq(line->key, "max_post_data_size")) {
                long max_post_data_size = parse_long(
                    line->value, (long)default_config.max_post_data_size);
                if (max_post_data_size < 0)
                    config_error(conf, "Negative maximum post data size");
                else if (max_post_data_size > 128 * (1 << 20))
                    config_error(conf,
                                 "Maximum post data can't be over 128MiB");
                lwan->config.max_post_data_size = (size_t)max_post_data_size;
            } else if (streq(line->key, "allow_temp_files")) {
                lwan->config.allow_post_temp_file =
                    !!strstr(line->value, "post");
            } else {
                config_error(conf, "Unknown config key: %s", line->key);
            }
            break;
        case 129:
            if (streq(line->key, "listener")) {
                if (!has_listener) {
                    parse_listener(conf, line, lwan);
                    has_listener = 1;
                } else {
                    config_error(conf, "Only one listener supported");
                }
            } else if (streq(line->key, "straitjacket")) {
                lwan_straitjacket_enforce_from_config(conf);
            } else {
                config_error(conf, "Unknown section type: %s", line->key);
            }
            break;
        case 128:
            config_error(conf, "Unexpected section end");
        }
    }

    if (config_last_error(conf)) {
        lwan_status_critical("Error on config file \"%s\", line %d: %s", path,
                             config_cur_line(conf), config_last_error(conf));
    }

    config_close(conf);

    return 1;
}
