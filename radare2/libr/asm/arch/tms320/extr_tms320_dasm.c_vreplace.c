
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int data ;


 int memmove (char*,char*,int) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;
 int vsnprintf (char*,int,char const*,int ) ;

int vreplace(char * string, const char * token, const char * fmt, va_list args)
{
 char data[64];
 char * pos;

 pos = strstr(string, token);
 if (!pos) {
  return 0;
 }

 vsnprintf(data, sizeof(data), fmt, args);

 memmove(pos + strlen(data), pos + strlen(token), strlen(pos + strlen(token)) + 1);
 memmove(pos, data, strlen(data));

 return 1;
}
