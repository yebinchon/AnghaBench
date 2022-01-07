
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int info; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_12__ {int * fs; } ;
typedef int TString ;
typedef TYPE_4__ LexState ;
typedef int FuncState ;


 scalar_t__ VGLOBAL ;
 int luaK_stringK (int *,int *) ;
 scalar_t__ singlevaraux (int *,int *,TYPE_3__*,int) ;
 int * str_checkname (TYPE_4__*) ;

__attribute__((used)) static void singlevar (LexState *ls, expdesc *var) {
  TString *varname = str_checkname(ls);
  FuncState *fs = ls->fs;
  if (singlevaraux(fs, varname, var, 1) == VGLOBAL)
    var->u.s.info = luaK_stringK(fs, varname);
}
