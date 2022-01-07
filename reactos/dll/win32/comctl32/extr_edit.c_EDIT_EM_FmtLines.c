
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int EF_USE_SOFTBRK ;
 int FIXME (char*) ;

__attribute__((used)) static BOOL EDIT_EM_FmtLines(EDITSTATE *es, BOOL add_eol)
{
 es->flags &= ~EF_USE_SOFTBRK;
 if (add_eol) {
  es->flags |= EF_USE_SOFTBRK;
  FIXME("soft break enabled, not implemented\n");
 }
 return add_eol;
}
