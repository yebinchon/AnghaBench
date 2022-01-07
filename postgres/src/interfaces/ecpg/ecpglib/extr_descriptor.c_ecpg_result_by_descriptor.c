
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {int * result; } ;
typedef int PGresult ;


 struct descriptor* ecpg_find_desc (int,char const*) ;

__attribute__((used)) static PGresult *
ecpg_result_by_descriptor(int line, const char *name)
{
 struct descriptor *desc = ecpg_find_desc(line, name);

 if (desc == ((void*)0))
  return ((void*)0);
 return desc->result;
}
