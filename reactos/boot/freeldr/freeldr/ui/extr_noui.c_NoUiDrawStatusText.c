
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char* PCSTR ;


 int printf (char*,char*) ;

VOID NoUiDrawStatusText(PCSTR StatusText)
{
    printf("%s\n", StatusText);
}
