
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct mg_str {scalar_t__ len; char* p; } ;
struct mg_connection {int dummy; } ;
struct http_message {struct mg_str body; struct mg_str query_string; } ;
typedef int sqlite3_stmt ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_STATIC ;
 int mg_get_http_var (struct mg_str const*,char*,char*,int) ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int sqlite3_bind_text (int *,int,char*,scalar_t__,int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_prepare_v2 (void*,char*,int,int **,int *) ;
 int sqlite3_step (int *) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void op_set(struct mg_connection *nc, const struct http_message *hm,
                   const struct mg_str *key, void *db) {
  sqlite3_stmt *stmt = ((void*)0);
  char value[200];
  const struct mg_str *body =
      hm->query_string.len > 0 ? &hm->query_string : &hm->body;

  mg_get_http_var(body, "value", value, sizeof(value));
  if (sqlite3_prepare_v2(db, "INSERT OR REPLACE INTO kv VALUES (?, ?);", -1,
                         &stmt, ((void*)0)) == SQLITE_OK) {
    sqlite3_bind_text(stmt, 1, key->p, key->len, SQLITE_STATIC);
    sqlite3_bind_text(stmt, 2, value, strlen(value), SQLITE_STATIC);
    sqlite3_step(stmt);
    sqlite3_finalize(stmt);
  }
  mg_printf(nc, "%s", "HTTP/1.1 200 OK\r\nContent-Length: 0\r\n\r\n");
}
