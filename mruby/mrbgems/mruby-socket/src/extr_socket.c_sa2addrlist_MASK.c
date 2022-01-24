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
struct sockaddr_in6 {unsigned short sin6_port; } ;
struct sockaddr_in {unsigned short sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sockaddr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 unsigned short FUNC11 (unsigned short) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, const struct sockaddr *sa, socklen_t salen)
{
  mrb_value ary, host;
  unsigned short port;
  const char *afstr;

  switch (sa->sa_family) {
  case AF_INET:
    afstr = "AF_INET";
    port = ((struct sockaddr_in *)sa)->sin_port;
    break;
  case AF_INET6:
    afstr = "AF_INET6";
    port = ((struct sockaddr_in6 *)sa)->sin6_port;
    break;
  default:
    FUNC6(mrb, E_ARGUMENT_ERROR, "bad af");
    return FUNC5();
  }
  port = FUNC11(port);
  host = FUNC7(mrb, NI_MAXHOST);
  if (FUNC1(sa, salen, FUNC0(host), NI_MAXHOST, NULL, 0, NI_NUMERICHOST) == -1)
    FUNC10(mrb, "getnameinfo");
  FUNC9(mrb, host, FUNC12(FUNC0(host)));
  ary = FUNC2(mrb, 4);
  FUNC3(mrb, ary, FUNC8(mrb, afstr));
  FUNC3(mrb, ary, FUNC4(port));
  FUNC3(mrb, ary, host);
  FUNC3(mrb, ary, host);
  return ary;
}