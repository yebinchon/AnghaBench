
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int actual_size ;
typedef int Size ;


 int Assert (int) ;
 int * guc_variables ;
 int memcpy (char*,int*,int) ;
 int num_guc_variables ;
 int serialize_variable (char**,int*,int ) ;

void
SerializeGUCState(Size maxsize, char *start_address)
{
 char *curptr;
 Size actual_size;
 Size bytes_left;
 int i;


 Assert(maxsize > sizeof(actual_size));
 curptr = start_address + sizeof(actual_size);
 bytes_left = maxsize - sizeof(actual_size);

 for (i = 0; i < num_guc_variables; i++)
  serialize_variable(&curptr, &bytes_left, guc_variables[i]);


 actual_size = maxsize - bytes_left - sizeof(actual_size);
 memcpy(start_address, &actual_size, sizeof(actual_size));
}
