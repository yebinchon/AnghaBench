
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;
typedef int DWORD ;
 int export_dword_data (int **,void*) ;
 int export_hex_data (int ,int **,int,size_t,void*,size_t) ;
 int export_newline (int ) ;
 int export_string_data (int **,void*,size_t) ;
 size_t export_value_name (int ,int *,int) ;
 int heap_free (int *) ;
 int write_file (int ,int *) ;

__attribute__((used)) static void export_data(HANDLE hFile, WCHAR *value_name, DWORD value_len,
                        DWORD type, void *data, size_t size)
{
    WCHAR *buf = ((void*)0);
    size_t line_len = export_value_name(hFile, value_name, value_len);

    switch (type)
    {
    case 128:
        export_string_data(&buf, data, size);
        break;
    case 132:
        if (size)
        {
            export_dword_data(&buf, data);
            break;
        }

    case 129:
    case 131:
    case 133:
    case 130:
    default:
        export_hex_data(hFile, &buf, type, line_len, data, size);
        break;
    }

    if (size || type == 128)
    {
        write_file(hFile, buf);
        heap_free(buf);
    }

    export_newline(hFile);
}
