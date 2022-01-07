
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int language_id; int encoding_id; int platform_id; } ;
typedef TYPE_1__ tt_name_record ;
typedef size_t LANGID ;


 size_t ARRAY_SIZE (size_t*) ;
 int GET_BE_WORD (int ) ;
 int IsValidCodePage (int ) ;
 int LANG_ENGLISH ;
 size_t MAKELANGID (int ,int ) ;
 scalar_t__ PRIMARYLANGID (size_t) ;
 int SUBLANG_DEFAULT ;
 int get_mac_code_page (TYPE_1__ const*) ;
 size_t* mac_langid_table ;

__attribute__((used)) static int match_name_table_language( const tt_name_record *name, LANGID lang )
{
    LANGID name_lang;

    switch (GET_BE_WORD(name->platform_id))
    {
    case 128:
        switch (GET_BE_WORD(name->encoding_id))
        {
        case 131:
        case 132:
            name_lang = GET_BE_WORD(name->language_id);
            break;
        default:
            return 0;
        }
        break;
    case 129:
        if (!IsValidCodePage( get_mac_code_page( name ))) return 0;
        name_lang = GET_BE_WORD(name->language_id);
        if (name_lang >= ARRAY_SIZE(mac_langid_table)) return 0;
        name_lang = mac_langid_table[name_lang];
        break;
    case 130:
        switch (GET_BE_WORD(name->encoding_id))
        {
        case 135:
        case 134:
        case 133:
            name_lang = GET_BE_WORD(name->language_id);
            if (name_lang >= ARRAY_SIZE(mac_langid_table)) return 0;
            name_lang = mac_langid_table[name_lang];
            break;
        default:
            return 0;
        }
        break;
    default:
        return 0;
    }
    if (name_lang == lang) return 3;
    if (PRIMARYLANGID( name_lang ) == PRIMARYLANGID( lang )) return 2;
    if (name_lang == MAKELANGID( LANG_ENGLISH, SUBLANG_DEFAULT )) return 1;
    return 0;
}
