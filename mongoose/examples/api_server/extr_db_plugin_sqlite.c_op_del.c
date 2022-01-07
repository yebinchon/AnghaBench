
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int len; int p; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;
typedef int sqlite3_stmt ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int sqlite3_bind_text (int *,int,int ,int ,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (void*,char*,int,int **,int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void op_del(struct mg_connection *nc, const struct http_message *hm,
                   const struct mg_str *key, void *db) {
  sqlite3_stmt *stmt = ((void*)0);
  int result;
  (void) hm;

  if (sqlite3_prepare_v2(db, "DELETE FROM kv WHERE key = ?;", -1, &stmt,
                         ((void*)0)) == SQLITE_OK) {
    sqlite3_bind_text(stmt, 1, key->p, key->len, SQLITE_STATIC);
    result = sqlite3_step(stmt);
    if (result == SQLITE_OK || result == SQLITE_ROW) {
      mg_printf(nc, "%s", "HTTP/1.1 200 OK\r\nContent-Length: 0\r\n\r\n");
    } else {
      mg_printf(nc, "%s",
                "HTTP/1.1 404 Not Found\r\n"
                "Content-Length: 0\r\n\r\n");
    }
    sqlite3_finalize(stmt);
  } else {
    mg_printf(nc, "%s",
              "HTTP/1.1 500 Server Error\r\n"
              "Content-Length: 0\r\n\r\n");
  }
}
