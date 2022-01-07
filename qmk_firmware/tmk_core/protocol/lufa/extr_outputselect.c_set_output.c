
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int desired_output ;
 int set_output_user (int ) ;

void set_output(uint8_t output) {
    set_output_user(output);
    desired_output = output;
}
