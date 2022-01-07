
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {char current; int buff; int decpoint; } ;
struct TYPE_11__ {int r; } ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;


 int buffreplace (TYPE_2__*,char,int ) ;
 scalar_t__ check_next (TYPE_2__*,char*) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isdigit (char) ;
 int luaO_str2d (int ,int *) ;
 int luaZ_buffer (int ) ;
 int lua_assert (scalar_t__) ;
 int save (TYPE_2__*,char) ;
 int save_and_next (TYPE_2__*) ;
 int trydecpoint (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void read_numeral (LexState *ls, SemInfo *seminfo) {
  lua_assert(isdigit(ls->current));
  do {
    save_and_next(ls);
  } while (isdigit(ls->current) || ls->current == '.');
  if (check_next(ls, "Ee"))
    check_next(ls, "+-");
  while (isalnum(ls->current) || ls->current == '_')
    save_and_next(ls);
  save(ls, '\0');
  buffreplace(ls, '.', ls->decpoint);
  if (!luaO_str2d(luaZ_buffer(ls->buff), &seminfo->r))
    trydecpoint(ls, seminfo);
}
