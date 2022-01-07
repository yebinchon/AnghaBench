
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef int RList ;
typedef TYPE_1__ RCore ;


 int __printRecursive (TYPE_1__*,int *,char const*,int,int ) ;
 int listFlag ;
 int r_flag_foreach_space (int ,int ,int ,int *) ;
 int r_flag_space_cur (int ) ;
 int r_list_free (int *) ;
 int * r_list_newf (int *) ;

__attribute__((used)) static void __flag_graph (RCore *core, const char *input, int mode) {
 RList *flags = r_list_newf (((void*)0));
 r_flag_foreach_space (core->flags, r_flag_space_cur (core->flags), listFlag, flags);
 __printRecursive (core, flags, input, mode, 0);
 r_list_free (flags);
}
