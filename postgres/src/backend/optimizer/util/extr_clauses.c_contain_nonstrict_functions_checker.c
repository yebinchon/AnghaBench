
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int func_strict (int ) ;

__attribute__((used)) static bool
contain_nonstrict_functions_checker(Oid func_id, void *context)
{
 return !func_strict(func_id);
}
