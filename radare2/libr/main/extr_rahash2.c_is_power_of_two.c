
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;



__attribute__((used)) static bool is_power_of_two(const ut64 x) {
 return x && !(x & (x - 1));
}
