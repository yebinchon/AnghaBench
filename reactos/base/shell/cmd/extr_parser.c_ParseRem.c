
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PARSED_COMMAND ;


 scalar_t__ CurChar ;
 int ParseChar () ;
 scalar_t__ _T (char) ;

__attribute__((used)) static PARSED_COMMAND *ParseRem(void)
{

    while (CurChar && CurChar != _T('\n'))
        ParseChar();
    return ((void*)0);
}
