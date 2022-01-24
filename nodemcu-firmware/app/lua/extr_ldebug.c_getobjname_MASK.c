#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {TYPE_2__* p; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_8__ {int /*<<< orphan*/ * upvalues; int /*<<< orphan*/ * k; } ;
typedef  TYPE_2__ Proto ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  OP_GETGLOBAL 132 
#define  OP_GETTABLE 131 
#define  OP_GETUPVAL 130 
#define  OP_MOVE 129 
#define  OP_SELF 128 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (TYPE_2__*,int) ; 
 char* FUNC10 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC15 (lua_State *L, CallInfo *ci, int stackpos,
                               const char **name) {
  if (FUNC8(ci)) {  /* a Lua function? */
    Proto *p = FUNC5(ci)->l.p;
    int pc = FUNC6(L, ci);
    Instruction i;
    *name = FUNC10(p, stackpos+1, pc);
    if (*name)  /* is a local? */
      return "local";
    i = FUNC13(p, pc, stackpos);  /* try symbolic execution */
    FUNC11(pc != -1);
    switch (FUNC4(i)) {
      case OP_GETGLOBAL: {
        int g = FUNC2(i);  /* global index */
        FUNC11(FUNC14(&p->k[g]));
        *name = FUNC12(&p->k[g]);
        return "global";
      }
      case OP_MOVE: {
        int a = FUNC0(i);
        int b = FUNC1(i);  /* move from `b' to `a' */
        if (b < a)
          return FUNC15(L, ci, b, name);  /* get name for `b' */
        break;
      }
      case OP_GETTABLE: {
        int k = FUNC3(i);  /* key index */
        *name = FUNC9(p, k);
        return "field";
      }
      case OP_GETUPVAL: {
        int u = FUNC1(i);  /* upvalue index */
        *name = p->upvalues ? FUNC7(p->upvalues[u]) : "?";
        return "upvalue";
      }
      case OP_SELF: {
        int k = FUNC3(i);  /* key index */
        *name = FUNC9(p, k);
        return "method";
      }
      default: break;
    }
  }
  return NULL;  /* no useful name found */
}