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
struct sockaddr_un {int sun_len; char* sun_path; int /*<<< orphan*/  sun_family; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value klass)
{
#ifdef _WIN32
  mrb_raise(mrb, E_NOTIMP_ERROR, "sockaddr_un unsupported on Windows");
  return mrb_nil_value();
#else
  struct sockaddr_un *sunp;
  mrb_value path, s;

  FUNC3(mrb, "S", &path);
  if ((size_t)FUNC0(path) > sizeof(sunp->sun_path) - 1) {
    FUNC6(mrb, E_ARGUMENT_ERROR, "too long unix socket path (max: %d bytes)", (int)sizeof(sunp->sun_path) - 1);
  }
  s = FUNC7(mrb, sizeof(struct sockaddr_un));
  sunp = (struct sockaddr_un *)FUNC1(s);
#if HAVE_SA_LEN
  sunp->sun_len = sizeof(struct sockaddr_un);
#endif
  sunp->sun_family = AF_UNIX;
  FUNC2(sunp->sun_path, FUNC1(path), FUNC0(path));
  sunp->sun_path[FUNC0(path)] = '\0';
  FUNC8(mrb, s, sizeof(struct sockaddr_un));
  return s;
#endif
}