
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int oneshot_layer_changed_user (int ) ;

__attribute__((weak)) void oneshot_layer_changed_kb(uint8_t layer) { oneshot_layer_changed_user(layer); }
