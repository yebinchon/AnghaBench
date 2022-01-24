#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_5__ {scalar_t__ sa_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; } ;
union socket_address {TYPE_3__ sin; TYPE_2__ sa; TYPE_1__ sin6; } ;
typedef  size_t socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int MG_SOCK_STRINGIFY_IP ; 
 int MG_SOCK_STRINGIFY_PORT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,void*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,...) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

int FUNC7(const union socket_address *sa, char *buf, size_t len,
                        int flags) {
  int is_v6;
  if (buf == NULL || len <= 0) return 0;
  FUNC2(buf, 0, len);
#if MG_ENABLE_IPV6
  is_v6 = sa->sa.sa_family == AF_INET6;
#else
  is_v6 = 0;
#endif
  if (flags & MG_SOCK_STRINGIFY_IP) {
#if MG_ENABLE_IPV6
    const void *addr = NULL;
    char *start = buf;
    socklen_t capacity = len;
    if (!is_v6) {
      addr = &sa->sin.sin_addr;
    } else {
      addr = (void *) &sa->sin6.sin6_addr;
      if (flags & MG_SOCK_STRINGIFY_PORT) {
        *buf = '[';
        start++;
        capacity--;
      }
    }
    if (inet_ntop(sa->sa.sa_family, addr, start, capacity) == NULL) {
      goto cleanup;
    }
#elif defined(_WIN32) || MG_LWIP || (MG_NET_IF == MG_NET_IF_PIC32)
    /* Only Windoze Vista (and newer) have inet_ntop() */
    char *addr_str = FUNC0(sa->sin.sin_addr);
    if (addr_str != NULL) {
      FUNC6(buf, FUNC0(sa->sin.sin_addr), len - 1);
    } else {
      goto cleanup;
    }
#else
    if (inet_ntop(AF_INET, (void *) &sa->sin.sin_addr, buf, len) == NULL) {
      goto cleanup;
    }
#endif
  }
  if (flags & MG_SOCK_STRINGIFY_PORT) {
    int port = FUNC3(sa->sin.sin_port);
    if (flags & MG_SOCK_STRINGIFY_IP) {
      int buf_len = FUNC5(buf);
      FUNC4(buf + buf_len, len - (buf_len + 1), "%s:%d", (is_v6 ? "]" : ""),
               port);
    } else {
      FUNC4(buf, len, "%d", port);
    }
  }

  return FUNC5(buf);

cleanup:
  *buf = '\0';
  return 0;
}