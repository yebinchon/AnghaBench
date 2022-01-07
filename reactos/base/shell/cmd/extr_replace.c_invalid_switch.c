
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;


 int ConOutResPaging (int ,int ) ;
 int ConOutResPrintf (int ,int ) ;
 int STRING_REPLACE_ERROR1 ;
 int STRING_REPLACE_HELP3 ;
 int TRUE ;

void invalid_switch(LPTSTR is)
{
    ConOutResPrintf(STRING_REPLACE_ERROR1,is);
    ConOutResPaging(TRUE,STRING_REPLACE_HELP3);
}
