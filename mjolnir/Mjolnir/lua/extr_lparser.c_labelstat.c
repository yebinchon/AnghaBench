
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_22__ {TYPE_1__* bl; } ;
struct TYPE_21__ {TYPE_12__* arr; } ;
struct TYPE_20__ {TYPE_2__* dyd; TYPE_5__* fs; } ;
struct TYPE_19__ {TYPE_4__ label; } ;
struct TYPE_18__ {int nactvar; } ;
struct TYPE_17__ {int nactvar; } ;
typedef int TString ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ Labellist ;
typedef TYPE_5__ FuncState ;


 int TK_DBCOLON ;
 scalar_t__ block_follow (TYPE_3__*,int ) ;
 int checknext (TYPE_3__*,int ) ;
 int checkrepeated (TYPE_5__*,TYPE_4__*,int *) ;
 int findgotos (TYPE_3__*,TYPE_12__*) ;
 int luaK_getlabel (TYPE_5__*) ;
 int newlabelentry (TYPE_3__*,TYPE_4__*,int *,int,int ) ;
 int skipnoopstat (TYPE_3__*) ;

__attribute__((used)) static void labelstat (LexState *ls, TString *label, int line) {

  FuncState *fs = ls->fs;
  Labellist *ll = &ls->dyd->label;
  int l;
  checkrepeated(fs, ll, label);
  checknext(ls, TK_DBCOLON);

  l = newlabelentry(ls, ll, label, line, luaK_getlabel(fs));
  skipnoopstat(ls);
  if (block_follow(ls, 0)) {

    ll->arr[l].nactvar = fs->bl->nactvar;
  }
  findgotos(ls, &ll->arr[l]);
}
