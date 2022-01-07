
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_10__ {int currentline; char* namewhat; int * name; int nups; } ;
typedef TYPE_2__ lua_Debug ;
struct TYPE_9__ {int nupvalues; } ;
struct TYPE_11__ {TYPE_1__ c; } ;
typedef TYPE_3__ Closure ;
typedef int CallInfo ;


 int currentline (int *,int *) ;
 int funcinfo (TYPE_2__*,TYPE_3__*,void*) ;
 char* getfuncname (int *,int *,int **) ;
 int info_tailcall (TYPE_2__*) ;

__attribute__((used)) static int auxgetinfo (lua_State *L, const char *what, lua_Debug *ar,
                    Closure *f, void *plight, CallInfo *ci) {
  int status = 1;
  if (plight == ((void*)0) && f == ((void*)0)) {
    info_tailcall(ar);
    return status;
  }
  for (; *what; what++) {
    switch (*what) {
      case 'S': {
        funcinfo(ar, f, plight);
        break;
      }
      case 'l': {
        ar->currentline = (ci) ? currentline(L, ci) : -1;
        break;
      }
      case 'u': {
        ar->nups = f ? f->c.nupvalues : 0;
        break;
      }
      case 'n': {
        ar->namewhat = (ci) ? getfuncname(L, ci, &ar->name) : ((void*)0);
        if (ar->namewhat == ((void*)0)) {
          ar->namewhat = "";
          ar->name = ((void*)0);
        }
        break;
      }
      case 'L':
      case 'f':
        break;
      default: status = 0;
    }
  }
  return status;
}
