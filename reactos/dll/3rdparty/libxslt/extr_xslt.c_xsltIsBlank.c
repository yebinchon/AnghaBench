
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 int IS_BLANK (scalar_t__) ;

int
xsltIsBlank(xmlChar *str) {
    if (str == ((void*)0))
 return(1);
    while (*str != 0) {
 if (!(IS_BLANK(*str))) return(0);
 str++;
    }
    return(1);
}
