
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HANDLE ;


 int heap_free (char*) ;
 char* heap_xalloc (int) ;
 int lstrlenW (char*) ;
 int sprintfW (char*,char const*,char*) ;
 int write_file (int ,char*) ;

__attribute__((used)) static void export_key_name(HANDLE hFile, WCHAR *name)
{
    static const WCHAR fmt[] = {'\r','\n','[','%','s',']','\r','\n',0};
    WCHAR *buf;

    buf = heap_xalloc((lstrlenW(name) + 7) * sizeof(WCHAR));
    sprintfW(buf, fmt, name);
    write_file(hFile, buf);
    heap_free(buf);
}
