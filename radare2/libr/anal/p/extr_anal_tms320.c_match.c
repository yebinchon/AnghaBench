
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncasecmp (char const*,char const*,int ) ;

__attribute__((used)) static bool match(const char * str, const char * token) {
 return !strncasecmp(str, token, strlen(token));
}
