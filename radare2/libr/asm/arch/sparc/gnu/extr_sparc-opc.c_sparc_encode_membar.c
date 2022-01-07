
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lookup_name (int ,char const*) ;
 int membar_table ;

int
sparc_encode_membar (const char *name)
{
  return lookup_name (membar_table, name);
}
