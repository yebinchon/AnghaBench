
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int get_func_leakproof (int ) ;

__attribute__((used)) static bool
contain_leaked_vars_checker(Oid func_id, void *context)
{
 return !get_func_leakproof(func_id);
}
