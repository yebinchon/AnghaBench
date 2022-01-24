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
struct template_mime {int /*<<< orphan*/  tpl; } ;
struct lwan_url_map {char* prefix; int /*<<< orphan*/  member_1; struct template_mime* data; int /*<<< orphan*/  handler; } ;
struct lwan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUERIES_PER_HOUR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_OPEN_READONLY ; 
 int /*<<< orphan*/  cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct template_mime FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  create_ipinfo ; 
 int /*<<< orphan*/  create_query_limit ; 
 int /*<<< orphan*/  csv_template_str ; 
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  destroy_ipinfo ; 
 int /*<<< orphan*/  destroy_query_limit ; 
 int /*<<< orphan*/  json_template_str ; 
 int /*<<< orphan*/  FUNC5 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC6 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC7 (struct lwan*,struct lwan_url_map const*) ; 
 int /*<<< orphan*/  FUNC8 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  query_limit ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  templated_output ; 
 int /*<<< orphan*/  xml_template_str ; 

int FUNC15(void)
{
    struct lwan l;

    FUNC5(&l);

    struct template_mime json_tpl =
        FUNC4(json_template_str, "application/json; charset=UTF-8");
    struct template_mime csv_tpl =
        FUNC4(csv_template_str, "application/csv; charset=UTF-8");
    struct template_mime xml_tpl =
        FUNC4(xml_template_str, "text/plain; charset=UTF-8");

    int result =
        FUNC14("./db/ipdb.sqlite", &db, SQLITE_OPEN_READONLY, NULL);
    if (result != SQLITE_OK)
        FUNC9("Could not open database: %s", FUNC13(db));
    cache = FUNC2(create_ipinfo, destroy_ipinfo, NULL, 10);

#if QUERIES_PER_HOUR != 0
    lwan_status_info("Limiting to %d queries per hour per client",
                     QUERIES_PER_HOUR);
    query_limit =
        cache_create(create_query_limit, destroy_query_limit, NULL, 3600);
#else
    FUNC10("Rate-limiting disabled");
#endif

    const struct lwan_url_map default_map[] = {
        {.prefix = "/json/",
         .handler = FUNC0(templated_output),
         .data = &json_tpl},
        {.prefix = "/xml/",
         .handler = FUNC0(templated_output),
         .data = &xml_tpl},
        {.prefix = "/csv/",
         .handler = FUNC0(templated_output),
         .data = &csv_tpl},
        {.prefix = "/", FUNC1("./static")},
        {.prefix = NULL},
    };

    FUNC7(&l, default_map);
    FUNC6(&l);
    FUNC8(&l);

    FUNC11(json_tpl.tpl);
    FUNC11(xml_tpl.tpl);
    FUNC11(csv_tpl.tpl);
#if QUERIES_PER_HOUR != 0
    cache_destroy(query_limit);
#endif
    FUNC3(cache);
    FUNC12(db);

    return 0;
}