
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int NameListToString (int *) ;
 char const* funcname_signature_string (int ,int,int *,int const*) ;

const char *
func_signature_string(List *funcname, int nargs,
       List *argnames, const Oid *argtypes)
{
 return funcname_signature_string(NameListToString(funcname),
          nargs, argnames, argtypes);
}
