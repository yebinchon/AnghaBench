
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef char* LPCSTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int lstrcpynA (char*,char const*,int) ;
 int strlen (char*) ;

__attribute__((used)) static LPSTR convert_file_list(LPCSTR FileList, DWORD *dwNumFiles)
{
    DWORD dwLen;
    const char *first = FileList;
    const char *last = FileList + strlen(FileList) - 1;
    LPSTR szConvertedList, temp;


    while (first < last && (*first == ' ' || *first == '\t' || *first == ':'))
        first++;


    while (last > first && (*last == ' ' || *last == '\t' || *last == ':'))
        last--;

    if (first == last)
        return ((void*)0);

    dwLen = last - first + 3;
    szConvertedList = HeapAlloc(GetProcessHeap(), 0, dwLen);
    lstrcpynA(szConvertedList, first, dwLen - 1);
    szConvertedList[dwLen - 1] = '\0';


    if (!szConvertedList[0])
    {
        HeapFree(GetProcessHeap(), 0, szConvertedList);
        return ((void*)0);
    }

    *dwNumFiles = 1;


    temp = szConvertedList;
    while (*temp)
    {
        if (*temp == ':')
        {
            *temp = '\0';
            (*dwNumFiles)++;
        }

        temp++;
    }

    return szConvertedList;
}
