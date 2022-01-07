
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* erealloc (char*,int) ;
 int sprintf (char*,char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int addToHeader(char **header_buffer, const char *specifier, char *string)
{
 *header_buffer = erealloc(*header_buffer, strlen(*header_buffer) + strlen(specifier) + strlen(string) + 1);
 sprintf(*header_buffer + strlen(*header_buffer), specifier, string);
 return 1;
}
