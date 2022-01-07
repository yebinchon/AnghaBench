
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_dns_message {int dummy; } ;
typedef enum mg_resolve_err { ____Placeholder_mg_resolve_err } mg_resolve_err ;



__attribute__((used)) static void dns_resolve_timeout_cb(struct mg_dns_message *msg, void *data,
                                   enum mg_resolve_err e) {
  (void) e;
  if (msg == ((void*)0)) {
    *(int *) data = 1;
  }
}
