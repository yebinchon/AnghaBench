#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {void* sin_port; TYPE_1__ sin_addr; } ;
union socket_address {TYPE_4__ sin6; TYPE_3__ sa; TYPE_2__ sin; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  a6 ;
typedef  int /*<<< orphan*/  a4 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MG_SOCK_STRINGIFY_IP ; 
 int MG_SOCK_STRINGIFY_PORT ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (union socket_address*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (union socket_address*,char*,int,int) ; 

__attribute__((used)) static const char *FUNC7(void) {
  char buf[60];
  buf[0] = '\0';
  {
    union socket_address a4;
    FUNC5(&a4, 0, sizeof(a4));
    a4.sa.sa_family = AF_INET;
    a4.sin.sin_addr.s_addr = FUNC3("127.0.0.1");
    a4.sin.sin_port = FUNC2(12345);
    FUNC6(&a4, buf, sizeof(buf), 0);
    FUNC1(buf, "");
    FUNC6(&a4, buf, sizeof(buf), MG_SOCK_STRINGIFY_IP);
    FUNC1(buf, "127.0.0.1");
    FUNC6(&a4, buf, sizeof(buf), MG_SOCK_STRINGIFY_PORT);
    FUNC1(buf, "12345");
    FUNC6(&a4, buf, sizeof(buf),
                        MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
    FUNC1(buf, "127.0.0.1:12345");
  }
#if MG_ENABLE_IPV6 && !defined(_WIN32)
  {
    union socket_address a6;
    memset(&a6, 0, sizeof(a6));
    a6.sa.sa_family = AF_INET6;
    ASSERT_EQ(inet_pton(AF_INET6, "2001::123", &a6.sin6.sin6_addr), 1);
    a6.sin6.sin6_port = htons(12345);
    mg_sock_addr_to_str(&a6, buf, sizeof(buf), 0);
    ASSERT_STREQ(buf, "");
    mg_sock_addr_to_str(&a6, buf, sizeof(buf), MG_SOCK_STRINGIFY_IP);
    ASSERT_STREQ(buf, "2001::123");
    mg_sock_addr_to_str(&a6, buf, sizeof(buf), MG_SOCK_STRINGIFY_PORT);
    ASSERT_STREQ(buf, "12345");
    mg_sock_addr_to_str(&a6, buf, sizeof(buf),
                        MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
    ASSERT_STREQ(buf, "[2001::123]:12345");
  }
#endif
  return NULL;
}