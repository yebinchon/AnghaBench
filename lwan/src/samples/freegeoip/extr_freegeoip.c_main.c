
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct template_mime {int tpl; } ;
struct lwan_url_map {char* prefix; int member_1; struct template_mime* data; int handler; } ;
struct lwan {int dummy; } ;


 int LWAN_HANDLER_REF (int ) ;
 int QUERIES_PER_HOUR ;
 int SERVE_FILES (char*) ;
 int SQLITE_OK ;
 int SQLITE_OPEN_READONLY ;
 int cache ;
 int cache_create (int ,int ,int *,int) ;
 int cache_destroy (int ) ;
 struct template_mime compile_template (int ,char*) ;
 int create_ipinfo ;
 int create_query_limit ;
 int csv_template_str ;
 int db ;
 int destroy_ipinfo ;
 int destroy_query_limit ;
 int json_template_str ;
 int lwan_init (struct lwan*) ;
 int lwan_main_loop (struct lwan*) ;
 int lwan_set_url_map (struct lwan*,struct lwan_url_map const*) ;
 int lwan_shutdown (struct lwan*) ;
 int lwan_status_critical (char*,int ) ;
 int lwan_status_info (char*,...) ;
 int lwan_tpl_free (int ) ;
 int query_limit ;
 int sqlite3_close (int ) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_open_v2 (char*,int *,int ,int *) ;
 int templated_output ;
 int xml_template_str ;

int main(void)
{
    struct lwan l;

    lwan_init(&l);

    struct template_mime json_tpl =
        compile_template(json_template_str, "application/json; charset=UTF-8");
    struct template_mime csv_tpl =
        compile_template(csv_template_str, "application/csv; charset=UTF-8");
    struct template_mime xml_tpl =
        compile_template(xml_template_str, "text/plain; charset=UTF-8");

    int result =
        sqlite3_open_v2("./db/ipdb.sqlite", &db, SQLITE_OPEN_READONLY, ((void*)0));
    if (result != SQLITE_OK)
        lwan_status_critical("Could not open database: %s", sqlite3_errmsg(db));
    cache = cache_create(create_ipinfo, destroy_ipinfo, ((void*)0), 10);







    lwan_status_info("Rate-limiting disabled");


    const struct lwan_url_map default_map[] = {
        {.prefix = "/json/",
         .handler = LWAN_HANDLER_REF(templated_output),
         .data = &json_tpl},
        {.prefix = "/xml/",
         .handler = LWAN_HANDLER_REF(templated_output),
         .data = &xml_tpl},
        {.prefix = "/csv/",
         .handler = LWAN_HANDLER_REF(templated_output),
         .data = &csv_tpl},
        {.prefix = "/", SERVE_FILES("./static")},
        {.prefix = ((void*)0)},
    };

    lwan_set_url_map(&l, default_map);
    lwan_main_loop(&l);
    lwan_shutdown(&l);

    lwan_tpl_free(json_tpl.tpl);
    lwan_tpl_free(xml_tpl.tpl);
    lwan_tpl_free(csv_tpl.tpl);



    cache_destroy(cache);
    sqlite3_close(db);

    return 0;
}
