
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* set_color_all ) (int ,int ,int ) ;} ;


 TYPE_1__ rgb_matrix_driver ;
 int stub1 (int ,int ,int ) ;

void rgb_matrix_set_color_all(uint8_t red, uint8_t green, uint8_t blue) { rgb_matrix_driver.set_color_all(red, green, blue); }
