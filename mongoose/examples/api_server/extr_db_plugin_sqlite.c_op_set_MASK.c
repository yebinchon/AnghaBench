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
typedef  int /*<<< orphan*/  value ;
struct mg_str {scalar_t__ len; char* p; } ;
struct mg_connection {int dummy; } ;
struct http_message {struct mg_str body; struct mg_str query_string; } ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (struct mg_str const*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void*,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct mg_connection *nc, const struct http_message *hm,
                   const struct mg_str *key, void *db) {
  sqlite3_stmt *stmt = NULL;
  char value[200];
  const struct mg_str *body =
      hm->query_string.len > 0 ? &hm->query_string : &hm->body;

  FUNC0(body, "value", value, sizeof(value));
  if (FUNC4(db, "INSERT OR REPLACE INTO kv VALUES (?, ?);", -1,
                         &stmt, NULL) == SQLITE_OK) {
    FUNC2(stmt, 1, key->p, key->len, SQLITE_STATIC);
    FUNC2(stmt, 2, value, FUNC6(value), SQLITE_STATIC);
    FUNC5(stmt);
    FUNC3(stmt);
  }
  FUNC1(nc, "%s", "HTTP/1.1 200 OK\r\nContent-Length: 0\r\n\r\n");
}