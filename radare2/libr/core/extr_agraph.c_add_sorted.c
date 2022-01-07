
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef int RList ;
typedef TYPE_1__ RGraphVisitor ;
typedef int RGraphNode ;


 int r_list_prepend (int *,int *) ;

__attribute__((used)) static void add_sorted(RGraphNode *n, RGraphVisitor *vis) {
 RList *l = (RList *) vis->data;
 r_list_prepend (l, n);
}
