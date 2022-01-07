
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int num; } ;
typedef TYPE_1__ RCore ;


 int r_num_math (int ,char const*) ;

__attribute__((used)) static ut64 r_cmd_java_get_input_num_value(RCore *core, const char *input_value){
 ut64 value = input_value ? r_num_math (core->num, input_value) : 0;
 return value;
}
