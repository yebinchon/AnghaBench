
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int add_size (int,int ) ;
 int estimate_variable_size (int ) ;
 int * guc_variables ;
 int num_guc_variables ;

Size
EstimateGUCStateSpace(void)
{
 Size size;
 int i;


 size = sizeof(Size);


 for (i = 0; i < num_guc_variables; i++)
  size = add_size(size,
      estimate_variable_size(guc_variables[i]));

 return size;
}
