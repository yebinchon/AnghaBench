
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* pemalloc (int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char * _pdo_pgsql_trim_message(const char *message, int persistent)
{
 register int i = strlen(message)-1;
 char *tmp;

 if (i>1 && (message[i-1] == '\r' || message[i-1] == '\n') && message[i] == '.') {
  --i;
 }
 while (i>0 && (message[i] == '\r' || message[i] == '\n')) {
  --i;
 }
 ++i;
 tmp = pemalloc(i + 1, persistent);
 memcpy(tmp, message, i);
 tmp[i] = '\0';

 return tmp;
}
