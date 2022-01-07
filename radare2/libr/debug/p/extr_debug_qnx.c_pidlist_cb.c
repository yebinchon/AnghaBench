
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int RList ;


 int __r_debug_pid_new (char*,int ,char,int ) ;
 int r_list_append (int *,int ) ;

__attribute__((used)) static void pidlist_cb (void *ctx, pid_t pid, char *name) {
 RList *list = ctx;
 r_list_append (list, __r_debug_pid_new (name, pid, 's', 0));
}
