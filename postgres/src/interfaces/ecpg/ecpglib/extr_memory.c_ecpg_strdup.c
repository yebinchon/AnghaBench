
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 int ecpg_raise (int,int ,int ,int *) ;
 char* strdup (char const*) ;

char *
ecpg_strdup(const char *string, int lineno)
{
 char *new;

 if (string == ((void*)0))
  return ((void*)0);

 new = strdup(string);
 if (!new)
 {
  ecpg_raise(lineno, ECPG_OUT_OF_MEMORY, ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return ((void*)0);
 }

 return new;
}
