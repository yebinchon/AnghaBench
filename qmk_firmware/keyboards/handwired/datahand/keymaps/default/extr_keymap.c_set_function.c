
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUNCTION_ARROWS ;
 int FUNCTION_MOUSE ;
 int layer_set (int,int ) ;
 int mouse_enabled ;
 int set_nas (int) ;

__attribute__((used)) static void set_function(void) {

  set_nas(0);


  layer_set(1, FUNCTION_MOUSE);
  layer_set(!mouse_enabled, FUNCTION_ARROWS);
}
