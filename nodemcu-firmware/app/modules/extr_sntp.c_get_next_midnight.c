
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int the_offset ;

__attribute__((used)) static int32_t get_next_midnight(int32_t now) {
  return now + 86400 - the_offset - (now - the_offset) % 86400;
}
