
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_value; int * cb_ptr_i; } ;
typedef TYPE_1__ RConfigNode ;



__attribute__((used)) static bool r_config_setter_i(void *data) {
 RConfigNode *node = data;
 *(node->cb_ptr_i) = node->i_value;
 return 1;
}
