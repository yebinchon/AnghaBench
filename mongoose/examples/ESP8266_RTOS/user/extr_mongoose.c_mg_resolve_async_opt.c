
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_resolve_async_request {char* name; int query; int max_retries; int timeout; void* data; int callback; } ;
struct mg_resolve_async_opts {char* nameserver; int max_retries; int timeout; struct mg_connection** dns_conn; } ;
struct mg_mgr {char* nameserver; } ;
struct mg_connection {struct mg_resolve_async_request* user_data; } ;
typedef int nameserver_url ;
typedef int mg_resolve_callback_t ;
typedef int dns_server_buff ;


 int DBG (char*) ;
 scalar_t__ MG_CALLOC (int,int) ;
 int MG_CB (int ,int *) ;
 char* MG_DEFAULT_NAMESERVER ;
 int MG_FREE (struct mg_resolve_async_request*) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_get_ip_address_of_nameserver (char*,int) ;
 int mg_resolve_async_eh ;
 int snprintf (char*,int,char*,char const*) ;
 int strncpy (char*,char const*,int) ;

int mg_resolve_async_opt(struct mg_mgr *mgr, const char *name, int query,
                         mg_resolve_callback_t cb, void *data,
                         struct mg_resolve_async_opts opts) {
  struct mg_resolve_async_request *req;
  struct mg_connection *dns_nc;
  const char *nameserver = opts.nameserver;
  char dns_server_buff[17], nameserver_url[26];

  if (nameserver == ((void*)0)) {
    nameserver = mgr->nameserver;
  }

  DBG(("%s %d %p", name, query, opts.dns_conn));


  req = (struct mg_resolve_async_request *) MG_CALLOC(1, sizeof(*req));
  if (req == ((void*)0)) {
    return -1;
  }

  strncpy(req->name, name, sizeof(req->name));
  req->name[sizeof(req->name) - 1] = '\0';

  req->query = query;
  req->callback = cb;
  req->data = data;

  req->max_retries = opts.max_retries ? opts.max_retries : 2;
  req->timeout = opts.timeout ? opts.timeout : 5;


  if (nameserver == ((void*)0)) {
    if (mg_get_ip_address_of_nameserver(dns_server_buff,
                                        sizeof(dns_server_buff)) != -1) {
      nameserver = dns_server_buff;
    } else {
      nameserver = MG_DEFAULT_NAMESERVER;
    }
  }

  snprintf(nameserver_url, sizeof(nameserver_url), "udp://%s:53", nameserver);

  dns_nc = mg_connect(mgr, nameserver_url, MG_CB(mg_resolve_async_eh, ((void*)0)));
  if (dns_nc == ((void*)0)) {
    MG_FREE(req);
    return -1;
  }
  dns_nc->user_data = req;
  if (opts.dns_conn != ((void*)0)) {
    *opts.dns_conn = dns_nc;
  }

  return 0;
}
