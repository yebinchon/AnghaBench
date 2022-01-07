
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dragon4_Scratch ;


 scalar_t__ _bigint_static_in_use ;

__attribute__((used)) static void
free_dragon4_bigint_scratch(Dragon4_Scratch *mem){
    _bigint_static_in_use = 0;
}
