
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PCSTR ;


 int ERR (char*,int ) ;
 int UiMessageBox (int ) ;

VOID FileSystemError(PCSTR ErrorString)
{
    ERR("%s\n", ErrorString);
    UiMessageBox(ErrorString);
}
