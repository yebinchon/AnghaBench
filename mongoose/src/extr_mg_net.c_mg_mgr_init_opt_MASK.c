#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mg_mgr_init_opts {int num_ifaces; int /*<<< orphan*/ * nameserver; int /*<<< orphan*/ ** ifaces; int /*<<< orphan*/ * main_iface; } ;
struct mg_mgr {int num_ifaces; int /*<<< orphan*/  nameserver; struct mg_iface** ifaces; void* user_data; int /*<<< orphan*/ * ctl; } ;
struct mg_iface {TYPE_1__* vtable; } ;
typedef  int /*<<< orphan*/  WSADATA ;
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (struct mg_iface*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 size_t MG_MAIN_IFACE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ ,int) ; 
 struct mg_iface* FUNC5 (int /*<<< orphan*/ *,struct mg_mgr*) ; 
 int /*<<< orphan*/ ** mg_ifaces ; 
 int mg_num_ifaces ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mg_iface*) ; 

void FUNC10(struct mg_mgr *m, void *user_data,
                     struct mg_mgr_init_opts opts) {
  FUNC4(m, 0, sizeof(*m));
#if MG_ENABLE_BROADCAST
  m->ctl[0] = m->ctl[1] = INVALID_SOCKET;
#endif
  m->user_data = user_data;

#ifdef _WIN32
  {
    WSADATA data;
    WSAStartup(MAKEWORD(2, 2), &data);
  }
#elif defined(__unix__)
  /* Ignore SIGPIPE signal, so if client cancels the request, it
   * won't kill the whole process. */
  FUNC7(SIGPIPE, SIG_IGN);
#endif

  {
    int i;
    if (opts.num_ifaces == 0) {
      opts.num_ifaces = mg_num_ifaces;
      opts.ifaces = mg_ifaces;
    }
    if (opts.main_iface != NULL) {
      opts.ifaces[MG_MAIN_IFACE] = opts.main_iface;
    }
    m->num_ifaces = opts.num_ifaces;
    m->ifaces =
        (struct mg_iface **) FUNC2(sizeof(*m->ifaces) * opts.num_ifaces);
    for (i = 0; i < opts.num_ifaces; i++) {
      m->ifaces[i] = FUNC5(opts.ifaces[i], m);
      m->ifaces[i]->vtable->init(m->ifaces[i]);
    }
  }
  if (opts.nameserver != NULL) {
    m->nameserver = FUNC8(opts.nameserver);
  }
  FUNC0(("=================================="));
  FUNC0(("init mgr=%p", m));
#if MG_ENABLE_SSL
  {
    static int init_done;
    if (!init_done) {
      mg_ssl_if_init();
      init_done++;
    }
  }
#endif
}