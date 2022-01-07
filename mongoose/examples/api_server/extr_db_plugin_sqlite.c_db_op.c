
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;





 int mg_printf (struct mg_connection*,char*,char*) ;
 int op_del (struct mg_connection*,struct http_message const*,struct mg_str const*,void*) ;
 int op_get (struct mg_connection*,struct http_message const*,struct mg_str const*,void*) ;
 int op_set (struct mg_connection*,struct http_message const*,struct mg_str const*,void*) ;

void db_op(struct mg_connection *nc, const struct http_message *hm,
           const struct mg_str *key, void *db, int op) {
  switch (op) {
    case 129:
      op_get(nc, hm, key, db);
      break;
    case 128:
      op_set(nc, hm, key, db);
      break;
    case 130:
      op_del(nc, hm, key, db);
      break;
    default:
      mg_printf(nc, "%s",
                "HTTP/1.0 501 Not Implemented\r\n"
                "Content-Length: 0\r\n\r\n");
      break;
  }
}
