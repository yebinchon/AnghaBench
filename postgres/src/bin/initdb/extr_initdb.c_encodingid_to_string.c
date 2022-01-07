
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pg_strdup (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *
encodingid_to_string(int enc)
{
 char result[20];

 sprintf(result, "%d", enc);
 return pg_strdup(result);
}
