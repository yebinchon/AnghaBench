
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char const) ;

__attribute__((used)) static int strToMatch(const char* str ,char *retstr)
{
 char* anchor = ((void*)0);
 const char* anchor1 = ((void*)0);
 int result = 0;

    if( (!str) || str[0] == '\0'){
        return result;
    } else {
 anchor = retstr;
 anchor1 = str;
        while( (*str)!='\0' ){
  if( *str == '-' ){
   *retstr = '_';
  } else {
   *retstr = tolower(*str);
  }
            str++;
            retstr++;
 }
 *retstr = '\0';
 retstr= anchor;
 str= anchor1;
 result = 1;
    }

    return(result);
}
