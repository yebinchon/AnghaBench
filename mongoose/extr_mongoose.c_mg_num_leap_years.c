
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mg_num_leap_years(int year) {
  return year / 4 - year / 100 + year / 400;
}
