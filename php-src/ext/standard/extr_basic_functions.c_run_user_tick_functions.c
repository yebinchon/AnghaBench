
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int llist_apply_func_t ;


 int BG (int ) ;
 scalar_t__ user_tick_function_call ;
 int user_tick_functions ;
 int zend_llist_apply (int ,int ) ;

__attribute__((used)) static void run_user_tick_functions(int tick_count, void *arg)
{
 zend_llist_apply(BG(user_tick_functions), (llist_apply_func_t) user_tick_function_call);
}
