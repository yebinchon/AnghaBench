
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HANDLE ;


 int write_file (int ,char const*) ;

__attribute__((used)) static void export_newline(HANDLE hFile)
{
    static const WCHAR newline[] = {'\r','\n',0};

    write_file(hFile, newline);
}
