
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dircolor; scalar_t__ curctx; } ;


 int A_BOLD ;
 int COLOR_PAIR (scalar_t__) ;
 int DIR_OR_LINK_TO_DIR ;
 int attroff (int) ;
 TYPE_1__ cfg ;

__attribute__((used)) static inline void resetdircolor(int flags)
{
 if (cfg.dircolor && !(flags & DIR_OR_LINK_TO_DIR)) {
  attroff(COLOR_PAIR(cfg.curctx + 1) | A_BOLD);
  cfg.dircolor = 0;
 }
}
