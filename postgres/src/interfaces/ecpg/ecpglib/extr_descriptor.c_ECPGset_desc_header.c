
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {int count; } ;


 struct descriptor* ecpg_find_desc (int,char const*) ;

bool
ECPGset_desc_header(int lineno, const char *desc_name, int count)
{
 struct descriptor *desc = ecpg_find_desc(lineno, desc_name);

 if (desc == ((void*)0))
  return 0;
 desc->count = count;
 return 1;
}
