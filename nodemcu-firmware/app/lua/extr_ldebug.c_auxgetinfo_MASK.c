#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {int currentline; char* namewhat; int /*<<< orphan*/ * name; int /*<<< orphan*/  nups; } ;
typedef  TYPE_2__ lua_Debug ;
struct TYPE_9__ {int /*<<< orphan*/  nupvalues; } ;
struct TYPE_11__ {TYPE_1__ c; } ;
typedef  TYPE_3__ Closure ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,void*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, const char *what, lua_Debug *ar,
                    Closure *f, void *plight, CallInfo *ci) {
  int status = 1;
  if (plight == NULL && f == NULL) {
    FUNC3(ar);
    return status;
  }
  for (; *what; what++) {
    switch (*what) {
      case 'S': {
        FUNC1(ar, f, plight);
        break;
      }
      case 'l': {
        ar->currentline = (ci) ? FUNC0(L, ci) : -1;
        break;
      }
      case 'u': {
        ar->nups = f ? f->c.nupvalues : 0;
        break;
      }
      case 'n': {
        ar->namewhat = (ci) ? FUNC2(L, ci, &ar->name) : NULL;
        if (ar->namewhat == NULL) {
          ar->namewhat = "";  /* not found */
          ar->name = NULL;
        }
        break;
      }
      case 'L':
      case 'f':  /* handled by lua_getinfo */
        break;
      default: status = 0;  /* invalid option */
    }
  }
  return status;
}