
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_14__ {int freereg; } ;
struct TYPE_13__ {int linenumber; TYPE_2__* fs; } ;
typedef int TString ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;


 int TK_IN ;
 int adjust_assign (TYPE_1__*,int,int ,int *) ;
 int checknext (TYPE_1__*,int ) ;
 int explist1 (TYPE_1__*,int *) ;
 int forbody (TYPE_1__*,int,int,int,int ) ;
 int luaK_checkstack (TYPE_2__*,int) ;
 int new_localvar (TYPE_1__*,int *,int ) ;
 int new_localvarliteral (TYPE_1__*,char*,int ) ;
 int * str_checkname (TYPE_1__*) ;
 scalar_t__ testnext (TYPE_1__*,char) ;

__attribute__((used)) static void forlist (LexState *ls, TString *indexname) {

  FuncState *fs = ls->fs;
  expdesc e;
  int nvars = 0;
  int line;
  int base = fs->freereg;

  new_localvarliteral(ls, "(for generator)", nvars++);
  new_localvarliteral(ls, "(for state)", nvars++);
  new_localvarliteral(ls, "(for control)", nvars++);

  new_localvar(ls, indexname, nvars++);
  while (testnext(ls, ','))
    new_localvar(ls, str_checkname(ls), nvars++);
  checknext(ls, TK_IN);
  line = ls->linenumber;
  adjust_assign(ls, 3, explist1(ls, &e), &e);
  luaK_checkstack(fs, 3);
  forbody(ls, base, line, nvars - 3, 0);
}
