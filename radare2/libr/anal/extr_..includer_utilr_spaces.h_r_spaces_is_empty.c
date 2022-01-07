
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {int spaces; } ;
typedef TYPE_1__ RSpaces ;
typedef TYPE_2__ RBIter ;


 TYPE_2__ r_rbtree_first (int ) ;

__attribute__((used)) static inline bool r_spaces_is_empty(RSpaces *sp) {
 RBIter it = r_rbtree_first (sp->spaces);
 return it.len == 0;
}
