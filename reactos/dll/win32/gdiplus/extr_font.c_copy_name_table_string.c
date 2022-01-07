
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int platform_id; int length; } ;
typedef TYPE_1__ tt_name_record ;
typedef int WORD ;
typedef int WCHAR ;
typedef int BYTE ;


 int GET_BE_WORD (int ) ;
 int MultiByteToWideChar (int,int ,char*,int,int*,int) ;



 int get_mac_code_page (TYPE_1__ const*) ;
 int* heap_alloc (int) ;

__attribute__((used)) static WCHAR *copy_name_table_string( const tt_name_record *name, const BYTE *data )
{
    WORD name_len = GET_BE_WORD(name->length);
    WORD codepage;
    WCHAR *ret;
    int len;

    switch (GET_BE_WORD(name->platform_id))
    {
    case 130:
    case 128:
        ret = heap_alloc((name_len / 2 + 1) * sizeof(WCHAR));
        for (len = 0; len < name_len / 2; len++)
            ret[len] = (data[len * 2] << 8) | data[len * 2 + 1];
        ret[len] = 0;
        return ret;
    case 129:
        codepage = get_mac_code_page( name );
        len = MultiByteToWideChar( codepage, 0, (char *)data, name_len, ((void*)0), 0 ) + 1;
        if (!len)
            return ((void*)0);
        ret = heap_alloc(len * sizeof(WCHAR));
        len = MultiByteToWideChar( codepage, 0, (char *)data, name_len, ret, len - 1 );
        ret[len] = 0;
        return ret;
    }
    return ((void*)0);
}
