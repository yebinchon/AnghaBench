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
struct TYPE_2__ {void* password_file; void* realm; } ;
struct lwan_url_map {TYPE_1__ authorization; int /*<<< orphan*/  flags; } ;
struct config_line {char* value; int type; char* key; } ;
struct config {int dummy; } ;

/* Variables and functions */
#define  CONFIG_LINE_TYPE_LINE 130 
#define  CONFIG_LINE_TYPE_SECTION 129 
#define  CONFIG_LINE_TYPE_SECTION_END 128 
 int /*<<< orphan*/  HANDLER_MUST_AUTHORIZE ; 
 int /*<<< orphan*/  FUNC0 (struct config*,char*,...) ; 
 struct config_line* FUNC1 (struct config*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(struct config *c,
                                                const struct config_line *l,
                                                struct lwan_url_map *url_map)
{
    if (!FUNC5(l->value, "basic")) {
        FUNC0(c, "Only basic authorization supported");
        return;
    }

    FUNC3(&url_map->authorization, 0, sizeof(url_map->authorization));

    while ((l = FUNC1(c))) {
        switch (l->type) {
        case CONFIG_LINE_TYPE_LINE:
            if (FUNC5(l->key, "realm")) {
                FUNC2(url_map->authorization.realm);
                url_map->authorization.realm = FUNC4(l->value);
            } else if (FUNC5(l->key, "password_file")) {
                FUNC2(url_map->authorization.password_file);
                url_map->authorization.password_file = FUNC4(l->value);
            }
            break;

        case CONFIG_LINE_TYPE_SECTION:
            FUNC0(c, "Unexpected section: %s", l->key);
            goto error;

        case CONFIG_LINE_TYPE_SECTION_END:
            if (!url_map->authorization.realm)
                url_map->authorization.realm = FUNC4("Lwan");
            if (!url_map->authorization.password_file)
                url_map->authorization.password_file = FUNC4("htpasswd");

            url_map->flags |= HANDLER_MUST_AUTHORIZE;
            return;
        }
    }

    FUNC0(c, "Could not find end of authorization section");

error:
    FUNC2(url_map->authorization.realm);
    FUNC2(url_map->authorization.password_file);
}