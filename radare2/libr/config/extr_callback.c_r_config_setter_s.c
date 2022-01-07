
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * value; int ** cb_ptr_s; } ;
typedef TYPE_1__ RConfigNode ;


 int free (int *) ;
 int * r_str_dup (int *,int *) ;

__attribute__((used)) static bool r_config_setter_s(void *data) {
 RConfigNode *node = data;
 if (!node->value || !*node->value) {
  free (*node->cb_ptr_s);
  *node->cb_ptr_s = ((void*)0);
 } else {
  *node->cb_ptr_s = r_str_dup (*node->cb_ptr_s, node->value);
 }
 return 1;
}
