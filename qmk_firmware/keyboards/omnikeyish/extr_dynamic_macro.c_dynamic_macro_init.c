
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dynamic_macro_t ;


 int DYNAMIC_MACRO_COUNT ;
 int dynamic_macros ;
 int memset (int *,int ,int) ;

void dynamic_macro_init(void) {

  memset(&dynamic_macros, 0, DYNAMIC_MACRO_COUNT * sizeof(dynamic_macro_t));
}
