#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  l_noret ;
struct TYPE_4__ {int /*<<< orphan*/  L; int /*<<< orphan*/  linenumber; int /*<<< orphan*/  source; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_ERRSYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static l_noret FUNC4 (LexState *ls, const char *msg, int token) {
  msg = FUNC1(ls->L, msg, ls->source, ls->linenumber);
  if (token)
    FUNC2(ls->L, "%s near %s", msg, FUNC3(ls, token));
  FUNC0(ls->L, LUA_ERRSYNTAX);
}