
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr_init_opts {int num_ifaces; int * nameserver; int ** ifaces; int * main_iface; } ;
struct mg_mgr {int num_ifaces; int nameserver; struct mg_iface** ifaces; void* user_data; int * ctl; } ;
struct mg_iface {TYPE_1__* vtable; } ;
typedef int WSADATA ;
struct TYPE_2__ {int (* init ) (struct mg_iface*) ;} ;


 int DBG (char*) ;
 int INVALID_SOCKET ;
 int MAKEWORD (int,int) ;
 size_t MG_MAIN_IFACE ;
 scalar_t__ MG_MALLOC (int) ;
 int SIGPIPE ;
 int SIG_IGN ;
 int WSAStartup (int ,int *) ;
 int memset (struct mg_mgr*,int ,int) ;
 struct mg_iface* mg_if_create_iface (int *,struct mg_mgr*) ;
 int ** mg_ifaces ;
 int mg_num_ifaces ;
 int mg_ssl_if_init () ;
 int signal (int ,int ) ;
 int strdup (int *) ;
 int stub1 (struct mg_iface*) ;

void mg_mgr_init_opt(struct mg_mgr *m, void *user_data,
                     struct mg_mgr_init_opts opts) {
  memset(m, 0, sizeof(*m));



  m->user_data = user_data;
  signal(SIGPIPE, SIG_IGN);


  {
    int i;
    if (opts.num_ifaces == 0) {
      opts.num_ifaces = mg_num_ifaces;
      opts.ifaces = mg_ifaces;
    }
    if (opts.main_iface != ((void*)0)) {
      opts.ifaces[MG_MAIN_IFACE] = opts.main_iface;
    }
    m->num_ifaces = opts.num_ifaces;
    m->ifaces =
        (struct mg_iface **) MG_MALLOC(sizeof(*m->ifaces) * opts.num_ifaces);
    for (i = 0; i < opts.num_ifaces; i++) {
      m->ifaces[i] = mg_if_create_iface(opts.ifaces[i], m);
      m->ifaces[i]->vtable->init(m->ifaces[i]);
    }
  }
  if (opts.nameserver != ((void*)0)) {
    m->nameserver = strdup(opts.nameserver);
  }
  DBG(("=================================="));
  DBG(("init mgr=%p", m));
}
