
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cb_printf ) (char*,int ) ;} ;
typedef TYPE_1__ RAnal ;


 int r_str_pad (char,int) ;
 int stub1 (char*,int ) ;

__attribute__((used)) static void print_indentation(const RAnal *anal, int indent) {
 anal->cb_printf ("%s", r_str_pad (' ', indent));
}
