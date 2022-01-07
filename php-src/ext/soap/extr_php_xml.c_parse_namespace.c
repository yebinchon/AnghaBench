
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int FALSE ;
 char* estrdup (char*) ;
 char* estrndup (char*,int) ;
 char* strrchr (char*,char) ;

int parse_namespace(const xmlChar *inval, char **value, char **namespace)
{
 char *found = strrchr((char*)inval, ':');

 if (found != ((void*)0) && found != (char*)inval) {
  (*namespace) = estrndup((char*)inval, found - (char*)inval);
  (*value) = estrdup(++found);
 } else {
  (*value) = estrdup((char*)inval);
  (*namespace) = ((void*)0);
 }

 return FALSE;
}
