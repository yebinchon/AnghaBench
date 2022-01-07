
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 char* escape_string (char*,size_t,size_t*) ;
 int heap_free (char*) ;
 char* heap_xalloc (size_t) ;
 int sprintfW (char*,char const*,char*) ;

__attribute__((used)) static void export_string_data(WCHAR **buf, WCHAR *data, size_t size)
{
    size_t len = 0, line_len;
    WCHAR *str;
    static const WCHAR fmt[] = {'"','%','s','"',0};

    if (size)
        len = size / sizeof(WCHAR) - 1;
    str = escape_string(data, len, &line_len);
    *buf = heap_xalloc((line_len + 3) * sizeof(WCHAR));
    sprintfW(*buf, fmt, str);
    heap_free(str);
}
