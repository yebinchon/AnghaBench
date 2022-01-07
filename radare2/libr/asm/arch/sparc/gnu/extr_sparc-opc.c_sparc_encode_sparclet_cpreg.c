
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lookup_name (int ,char const*) ;
 int sparclet_cpreg_table ;

int
sparc_encode_sparclet_cpreg (const char *name)
{
  return lookup_name (sparclet_cpreg_table, name);
}
