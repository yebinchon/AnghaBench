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
typedef  union socket_address {int dummy; } socket_address ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int const) ; 
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 int FUNC2 (char const*,union socket_address*,int*,char*,int) ; 

__attribute__((used)) static const char *FUNC3(void) {
  static const char *valid[] = {
    "1",
    "1.2.3.4:1",
    "tcp://123",
    "udp://0.0.0.0:99",
#ifndef _WIN32 /* No /etc/hosts on Windows. */
    "tcp://localhost:99",
#endif
    ":8080",
#if MG_ENABLE_IPV6
    "udp://[::1]:123",
    "[3ffe:2a00:100:7031::1]:900",
#endif
    NULL
  };
  static const int protos[] = {
    SOCK_STREAM,
    SOCK_STREAM,
    SOCK_STREAM,
    SOCK_DGRAM,
    SOCK_STREAM,
    SOCK_STREAM
#if MG_ENABLE_IPV6
    ,
    SOCK_DGRAM,
    SOCK_STREAM
#endif
  };
  static const char *need_lookup[] = {"udp://a.com:53", "locl_host:12", NULL};
  static const char *invalid[] = {
      "99999", "1k", "1.2.3", "1.2.3.4:", "1.2.3.4:2p", "blah://12", ":123x",
      "veeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeery.long:12345",
      "udp://missingport", NULL};
  char host[50];
  union socket_address sa;
  int i, proto;

  for (i = 0; valid[i] != NULL; i++) {
    FUNC0(FUNC2(valid[i], &sa, &proto, host, sizeof(host)) > 0);
    FUNC1(proto, protos[i]);
  }

  for (i = 0; invalid[i] != NULL; i++) {
    FUNC1(FUNC2(invalid[i], &sa, &proto, host, sizeof(host)),
              -1);
  }

  for (i = 0; need_lookup[i] != NULL; i++) {
    FUNC1(FUNC2(need_lookup[i], &sa, &proto, host, sizeof(host)),
              0);
  }

  return NULL;
}