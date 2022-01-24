#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mg_mgr {int dummy; } ;
struct mg_connection {int /*<<< orphan*/  sock; } ;
struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct ip_mreq {TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; } ;
typedef  int /*<<< orphan*/  listen ;
typedef  int /*<<< orphan*/  group ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_ADD_MEMBERSHIP ; 
 char* MCAST_GROUP ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (char const*) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 

int FUNC12(int argc, char **argv) {
  struct mg_mgr mgr;
  const char *port = "1234";
  struct mg_connection *nc;
  struct ip_mreq group;
  const char *interface = NULL;
  const char *mcast_group = MCAST_GROUP;
  int i;

  /* Parse command line arguments */
  for (i = 1; i < argc; i++) {
    // IP address of the interface where to join a multicast group.
    if (FUNC10(argv[i], "-i") == 0) {
      interface = argv[++i];
    } else if (FUNC10(argv[i], "-g") == 0) {
      mcast_group = argv[++i];
    } else if (FUNC10(argv[i], "-p") == 0) {
      port = argv[++i];
    }
  }

  if (interface == NULL) {
    FUNC11(argv);
  }

  FUNC4(&mgr, NULL);
  {
    char listen[256];
    FUNC9(listen, sizeof(listen), "udp://%s", port);
    nc = FUNC2(&mgr, listen, ev_handler);
  }

  if (nc == NULL) {
    FUNC6("cannot bind\n");
    FUNC0(1);
  }

  group.imr_multiaddr.s_addr = FUNC1(mcast_group);
  group.imr_interface.s_addr = FUNC1(interface);
  if (FUNC8(nc->sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, (char *) &group,
                 sizeof(group)) < 0) {
    FUNC6("Adding multicast group error");
    FUNC0(1);
  }

  FUNC7("Starting mcast server on port %s listening to group %s\n", port,
         mcast_group);
  for (;;) {
    FUNC5(&mgr, 1000);
  }
  FUNC3(&mgr);

  return 0;
}