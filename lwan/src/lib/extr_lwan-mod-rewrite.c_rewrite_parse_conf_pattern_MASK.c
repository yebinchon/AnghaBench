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
struct private_data {int /*<<< orphan*/  patterns; } ;
struct pattern {char* pattern; char* expand_pattern; int /*<<< orphan*/  flags; } ;
struct config_line {int type; int /*<<< orphan*/  key; int /*<<< orphan*/  value; } ;
struct config {int dummy; } ;

/* Variables and functions */
#define  CONFIG_LINE_TYPE_LINE 130 
#define  CONFIG_LINE_TYPE_SECTION 129 
#define  CONFIG_LINE_TYPE_SECTION_END 128 
 int /*<<< orphan*/  PATTERN_EXPAND_LUA ; 
 int /*<<< orphan*/  PATTERN_EXPAND_LWAN ; 
 int /*<<< orphan*/  PATTERN_HANDLE_REDIRECT ; 
 int /*<<< orphan*/  PATTERN_HANDLE_REWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct config*,char*,...) ; 
 struct config_line* FUNC1 (struct config*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct pattern* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC7(struct private_data *pd,
                                       struct config *config,
                                       const struct config_line *line)
{
    struct pattern *pattern;
    char *redirect_to = NULL, *rewrite_as = NULL;
    bool expand_with_lua = false;

    pattern = FUNC4(&pd->patterns);
    if (!pattern)
        goto out_no_free;

    pattern->pattern = FUNC5(line->value);
    if (!pattern->pattern)
        goto out;

    while ((line = FUNC1(config))) {
        switch (line->type) {
        case CONFIG_LINE_TYPE_LINE:
            if (FUNC6(line->key, "redirect_to")) {
                FUNC2(redirect_to);

                redirect_to = FUNC5(line->value);
                if (!redirect_to)
                    goto out;
            } else if (FUNC6(line->key, "rewrite_as")) {
                FUNC2(rewrite_as);

                rewrite_as = FUNC5(line->value);
                if (!rewrite_as)
                    goto out;
            } else if (FUNC6(line->key, "expand_with_lua")) {
                expand_with_lua = FUNC3(line->value, false);
            } else {
                FUNC0(config, "Unexpected key: %s", line->key);
                goto out;
            }
            break;
        case CONFIG_LINE_TYPE_SECTION:
            FUNC0(config, "Unexpected section: %s", line->key);
            break;
        case CONFIG_LINE_TYPE_SECTION_END:
            if (redirect_to && rewrite_as) {
                FUNC0(
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
                FUNC0(
                    config,
                    "either `redirect to` or `rewrite as` are required");
                goto out;
            }
            if (expand_with_lua) {
#ifdef HAVE_LUA
                pattern->flags |= PATTERN_EXPAND_LUA;
#else
                FUNC0(config, "Lwan has been built without Lua. "
                                     "`expand_with_lua` is not available");
                goto out;
#endif
            } else {
                pattern->flags |= PATTERN_EXPAND_LWAN;
            }

            return true;
        }
    }

out:
    FUNC2(pattern->pattern);
    FUNC2(redirect_to);
    FUNC2(rewrite_as);
out_no_free:
    FUNC0(config, "Could not copy pattern");
    return false;
}