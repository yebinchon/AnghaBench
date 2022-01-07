
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __fix_layout_h (int *) ;
 int __fix_layout_w (int *) ;

void __fix_layout (RCore *core) {
 __fix_layout_w (core);
 __fix_layout_h (core);
}
