
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OUT_OF_MEMORY ;
 int mmfatal (int ,char*) ;
 char* strdup (char const*) ;

char *
mm_strdup(const char *string)
{
 char *new = strdup(string);

 if (new == ((void*)0))
  mmfatal(OUT_OF_MEMORY, "out of memory");

 return new;
}
