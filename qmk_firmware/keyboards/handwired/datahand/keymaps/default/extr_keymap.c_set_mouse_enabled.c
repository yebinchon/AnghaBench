
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mouse_enabled ;
 int set_function () ;

__attribute__((used)) static void set_mouse_enabled(bool on) {
  mouse_enabled = on;


  set_function();
}
