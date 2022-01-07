
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;


 int ConOutResPrintf (int ,int ) ;
 int FilePromptYNA (int ) ;
 int STRING_COPY_HELP1 ;

__attribute__((used)) static INT CopyOverwrite (LPTSTR fn)
{

    INT res;
    ConOutResPrintf(STRING_COPY_HELP1, fn);
    res = FilePromptYNA (0);
    return res;
}
