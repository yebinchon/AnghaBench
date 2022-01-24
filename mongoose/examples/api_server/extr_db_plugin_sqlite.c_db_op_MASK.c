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
struct mg_str {int dummy; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;

/* Variables and functions */
#define  API_OP_DEL 130 
#define  API_OP_GET 129 
#define  API_OP_SET 128 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,struct http_message const*,struct mg_str const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,struct http_message const*,struct mg_str const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,struct http_message const*,struct mg_str const*,void*) ; 

void FUNC4(struct mg_connection *nc, const struct http_message *hm,
           const struct mg_str *key, void *db, int op) {
  switch (op) {
    case API_OP_GET:
      FUNC2(nc, hm, key, db);
      break;
    case API_OP_SET:
      FUNC3(nc, hm, key, db);
      break;
    case API_OP_DEL:
      FUNC1(nc, hm, key, db);
      break;
    default:
      FUNC0(nc, "%s",
                "HTTP/1.0 501 Not Implemented\r\n"
                "Content-Length: 0\r\n\r\n");
      break;
  }
}