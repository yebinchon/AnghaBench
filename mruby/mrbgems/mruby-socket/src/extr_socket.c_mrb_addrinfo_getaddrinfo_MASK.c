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
struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  E_SOCKET_ERROR ; 
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC28(mrb_state *mrb, mrb_value klass)
{
  struct addrinfo hints, *res0, *res;
  mrb_value ai, ary, family, lastai, nodename, protocol, sa, service, socktype;
  mrb_int flags;
  int arena_idx, error;
  const char *hostname = NULL, *servname = NULL;

  ary = FUNC6(mrb);
  arena_idx = FUNC19(mrb);  /* ary must be on arena! */

  family = socktype = protocol = FUNC23();
  flags = 0;
  FUNC20(mrb, "oo|oooi", &nodename, &service, &family, &socktype, &protocol, &flags);

  if (FUNC27(nodename)) {
    hostname = FUNC0(mrb, nodename);
  } else if (FUNC22(nodename)) {
    hostname = NULL;
  } else {
    FUNC24(mrb, E_TYPE_ERROR, "nodename must be String or nil");
  }

  if (FUNC27(service)) {
    servname = FUNC0(mrb, service);
  } else if (FUNC14(service)) {
    servname = FUNC1(FUNC15(mrb, service, 10));
  } else if (FUNC22(service)) {
    servname = NULL;
  } else {
    FUNC24(mrb, E_TYPE_ERROR, "service must be String, Fixnum, or nil");
  }

  FUNC5(&hints, 0, sizeof(hints));
  hints.ai_flags = (int)flags;

  if (FUNC14(family)) {
    hints.ai_family = (int)FUNC13(family);
  }

  if (FUNC14(socktype)) {
    hints.ai_socktype = (int)FUNC13(socktype);
  }

  if (FUNC14(protocol)) {
    hints.ai_protocol = (int)FUNC13(protocol);
  }

  lastai = FUNC11(mrb, klass, FUNC21(mrb, "_lastai"));
  if (FUNC9(lastai)) {
    FUNC2((struct addrinfo*)FUNC8(lastai));
    FUNC12(mrb, klass, FUNC21(mrb, "_lastai"), FUNC23());
  }

  error = FUNC4(hostname, servname, &hints, &res0);
  if (error) {
    FUNC25(mrb, E_SOCKET_ERROR, "getaddrinfo: %s", FUNC3(error));
  }
  FUNC12(mrb, klass, FUNC21(mrb, "_lastai"), FUNC10(mrb, res0));

  for (res = res0; res != NULL; res = res->ai_next) {
    sa = FUNC26(mrb, (char*)res->ai_addr, res->ai_addrlen);
    ai = FUNC17(mrb, klass, "new", 4, sa, FUNC16(res->ai_family), FUNC16(res->ai_socktype), FUNC16(res->ai_protocol));
    FUNC7(mrb, ary, ai);
    FUNC18(mrb, arena_idx);
  }

  FUNC2(res0);
  FUNC12(mrb, klass, FUNC21(mrb, "_lastai"), FUNC23());

  return ary;
}