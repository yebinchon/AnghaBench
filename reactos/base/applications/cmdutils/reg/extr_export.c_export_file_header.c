
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;


 int write_file (int ,int const*) ;

__attribute__((used)) static void export_file_header(HANDLE hFile)
{
    static const WCHAR header[] = { 0xfeff,'W','i','n','d','o','w','s',' ',
                                   'R','e','g','i','s','t','r','y',' ','E','d','i','t','o','r',' ',
                                   'V','e','r','s','i','o','n',' ','5','.','0','0','\r','\n'};

    write_file(hFile, header);
}
