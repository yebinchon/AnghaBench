
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asi_table ;
 char const* lookup_value (int ,int) ;

const char *
sparc_decode_asi (int value)
{
  return lookup_value (asi_table, value);
}
