
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 scalar_t__ PROVOLATILE_VOLATILE ;
 scalar_t__ func_volatile (int ) ;

__attribute__((used)) static bool
contain_volatile_functions_checker(Oid func_id, void *context)
{
 return (func_volatile(func_id) == PROVOLATILE_VOLATILE);
}
