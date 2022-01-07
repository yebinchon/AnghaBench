
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* estrndup (char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static char *get_http_header_value(char *headers, char *type)
{
 char *pos, *tmp = ((void*)0);
 int typelen, headerslen;

 typelen = strlen(type);
 headerslen = strlen(headers);



 pos = headers;
 do {

  if (strncasecmp(pos, type, typelen) == 0) {
   char *eol;


   tmp = pos + typelen;
   eol = strchr(tmp, '\n');
   if (eol == ((void*)0)) {
    eol = headers + headerslen;
   } else if (eol > tmp && *(eol-1) == '\r') {
    eol--;
   }
   return estrndup(tmp, eol - tmp);
  }


  pos = strchr(pos, '\n');
  if (pos) {
   pos++;
  }

 } while (pos);

 return ((void*)0);
}
