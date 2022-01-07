
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_WARNING ;
 int FAILURE ;
 int SUCCESS ;
 unsigned int if_nametoindex (char const*) ;
 int php_error_docref (int *,int ,char*,...) ;

int php_string_to_if_index(const char *val, unsigned *out)
{
 php_error_docref(((void*)0), E_WARNING,
   "this platform does not support looking up an interface by "
   "name, an integer interface index must be supplied instead");
 return FAILURE;

}
