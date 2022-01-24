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
struct lwan_url_map {int flags; struct lwan_module const* module; void* handler; struct hash* data; } ;
struct lwan_module {int flags; void* handle_request; struct hash* (* create_from_hash ) (char*,struct hash*) ;int /*<<< orphan*/  (* parse_conf ) (struct hash*,struct config*) ;} ;
struct lwan {int /*<<< orphan*/  url_map_trie; } ;
struct hash {int dummy; } ;
struct config_line {int type; int /*<<< orphan*/  key; int /*<<< orphan*/  value; } ;
struct config {int dummy; } ;

/* Variables and functions */
#define  CONFIG_LINE_TYPE_LINE 130 
#define  CONFIG_LINE_TYPE_SECTION 129 
#define  CONFIG_LINE_TYPE_SECTION_END 128 
 int HANDLER_DATA_IS_HASH_TABLE ; 
 int HANDLER_PARSE_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct lwan_url_map*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct config*) ; 
 int /*<<< orphan*/  FUNC4 (struct config*,char*,...) ; 
 struct config* FUNC5 (struct config*,struct config_line const*) ; 
 char* FUNC6 (struct config*) ; 
 struct config_line* FUNC7 (struct config*) ; 
 int /*<<< orphan*/  FUNC8 (struct config*,struct config_line const*) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC9 (struct hash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hash*) ; 
 struct hash* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct config*,struct config_line const*,struct lwan_url_map*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 struct hash* FUNC16 (char*,struct hash*) ; 
 int /*<<< orphan*/  FUNC17 (struct hash*,struct config*) ; 

__attribute__((used)) static void FUNC18(struct config *c,
                                  const struct config_line *l,
                                  struct lwan *lwan,
                                  const struct lwan_module *module,
                                  void *handler)
{
    struct lwan_url_map url_map = {};
    struct hash *hash = FUNC11(free, free);
    char *prefix = FUNC14(l->value);
    struct config *isolated;

    isolated = FUNC5(c, l);
    if (!isolated) {
        FUNC4(c, "Could not isolate configuration file");
        goto out;
    }

    while ((l = FUNC7(c))) {
        switch (l->type) {
        case CONFIG_LINE_TYPE_LINE:
            FUNC9(hash, FUNC13(l->key), FUNC13(l->value));
            break;

        case CONFIG_LINE_TYPE_SECTION:
            if (FUNC15(l->key, "authorization")) {
                FUNC12(c, l, &url_map);
            } else if (!FUNC8(c, l)) {
                FUNC4(c, "Could not skip section");
                goto out;
            }
            break;

        case CONFIG_LINE_TYPE_SECTION_END:
            goto add_map;
        }
    }

    FUNC4(c, "Expecting section end while parsing prefix");
    goto out;

add_map:
    FUNC2((handler && !module) || (!handler && module));

    if (handler) {
        url_map.handler = handler;
        url_map.flags |= HANDLER_PARSE_MASK | HANDLER_DATA_IS_HASH_TABLE;
        url_map.data = hash;
        url_map.module = NULL;

        hash = NULL;
    } else if (module->create_from_hash && module->handle_request) {
        url_map.data = module->create_from_hash(prefix, hash);
        if (!url_map.data) {
            FUNC4(c, "Could not create module instance");
            goto out;
        }

        if (module->parse_conf && !module->parse_conf(url_map.data, isolated)) {
            const char *msg = FUNC6(isolated);

            FUNC4(c, "Error from module: %s", msg ? msg : "Unknown");
            goto out;
        }

        url_map.handler = module->handle_request;
        url_map.flags |= module->flags;
        url_map.module = module;
    } else if (FUNC0(!module->create_from_hash)) {
        FUNC4(c, "Module isn't prepared to load settings from a file; "
                        "create_from_hash() method isn't present");
        goto out;
    } else if (FUNC0(!module->handle_request)) {
        FUNC4(c, "Module does not have handle_request() method");
        goto out;
    }

    FUNC1(&lwan->url_map_trie, prefix, &url_map);

out:
    FUNC10(hash);
    FUNC3(isolated);
}