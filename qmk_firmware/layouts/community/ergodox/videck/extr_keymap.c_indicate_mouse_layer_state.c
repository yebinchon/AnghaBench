
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indicate_using_led (int,int const) ;

__attribute__((used)) static inline void indicate_mouse_layer_state(const bool enabled) {
  indicate_using_led(3, enabled);
}
