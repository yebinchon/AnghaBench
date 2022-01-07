
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HANDLE ;


 char* escape_string (char*,size_t,size_t*) ;
 int heap_free (char*) ;
 char* heap_xalloc (size_t) ;
 size_t lstrlenW (char const*) ;
 size_t sprintfW (char*,char const*,char*) ;
 int write_file (int ,char const*) ;

__attribute__((used)) static size_t export_value_name(HANDLE hFile, WCHAR *name, size_t len)
{
    static const WCHAR quoted_fmt[] = {'"','%','s','"','=',0};
    static const WCHAR default_name[] = {'@','=',0};
    size_t line_len;

    if (name && *name)
    {
        WCHAR *str = escape_string(name, len, &line_len);
        WCHAR *buf = heap_xalloc((line_len + 4) * sizeof(WCHAR));
        line_len = sprintfW(buf, quoted_fmt, str);
        write_file(hFile, buf);
        heap_free(buf);
        heap_free(str);
    }
    else
    {
        line_len = lstrlenW(default_name);
        write_file(hFile, default_name);
    }

    return line_len;
}
