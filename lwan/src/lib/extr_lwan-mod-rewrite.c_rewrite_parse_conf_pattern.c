
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int patterns; } ;
struct pattern {char* pattern; char* expand_pattern; int flags; } ;
struct config_line {int type; int key; int value; } ;
struct config {int dummy; } ;





 int PATTERN_EXPAND_LUA ;
 int PATTERN_EXPAND_LWAN ;
 int PATTERN_HANDLE_REDIRECT ;
 int PATTERN_HANDLE_REWRITE ;
 int config_error (struct config*,char*,...) ;
 struct config_line* config_read_line (struct config*) ;
 int free (char*) ;
 int parse_bool (int ,int) ;
 struct pattern* pattern_array_append0 (int *) ;
 void* strdup (int ) ;
 int streq (int ,char*) ;

__attribute__((used)) static bool rewrite_parse_conf_pattern(struct private_data *pd,
                                       struct config *config,
                                       const struct config_line *line)
{
    struct pattern *pattern;
    char *redirect_to = ((void*)0), *rewrite_as = ((void*)0);
    bool expand_with_lua = 0;

    pattern = pattern_array_append0(&pd->patterns);
    if (!pattern)
        goto out_no_free;

    pattern->pattern = strdup(line->value);
    if (!pattern->pattern)
        goto out;

    while ((line = config_read_line(config))) {
        switch (line->type) {
        case 130:
            if (streq(line->key, "redirect_to")) {
                free(redirect_to);

                redirect_to = strdup(line->value);
                if (!redirect_to)
                    goto out;
            } else if (streq(line->key, "rewrite_as")) {
                free(rewrite_as);

                rewrite_as = strdup(line->value);
                if (!rewrite_as)
                    goto out;
            } else if (streq(line->key, "expand_with_lua")) {
                expand_with_lua = parse_bool(line->value, 0);
            } else {
                config_error(config, "Unexpected key: %s", line->key);
                goto out;
            }
            break;
        case 129:
            config_error(config, "Unexpected section: %s", line->key);
            break;
        case 128:
            if (redirect_to && rewrite_as) {
                config_error(
                    config,
                    "`redirect to` and `rewrite as` are mutually exclusive");
                goto out;
            }
            if (redirect_to) {
                pattern->expand_pattern = redirect_to;
                pattern->flags |= PATTERN_HANDLE_REDIRECT;
            } else if (rewrite_as) {
                pattern->expand_pattern = rewrite_as;
                pattern->flags |= PATTERN_HANDLE_REWRITE;
            } else {
                config_error(
                    config,
                    "either `redirect to` or `rewrite as` are required");
                goto out;
            }
            if (expand_with_lua) {



                config_error(config, "Lwan has been built without Lua. "
                                     "`expand_with_lua` is not available");
                goto out;

            } else {
                pattern->flags |= PATTERN_EXPAND_LWAN;
            }

            return 1;
        }
    }

out:
    free(pattern->pattern);
    free(redirect_to);
    free(rewrite_as);
out_no_free:
    config_error(config, "Could not copy pattern");
    return 0;
}
