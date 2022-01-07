
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int itemFlags; int nItems; TYPE_1__* items; int keyword; } ;
struct TYPE_5__ {int local; int name; } ;
typedef int LPWSTR ;
typedef TYPE_2__ IndexItem ;


 int WARN (char*,...) ;
 int _strnicmp (char*,char const*,int) ;
 int debugstr_an (char const*,int) ;
 int decode_html (char const*,int,int ) ;
 char* get_attr (char const*,char*,int*) ;
 int item_realloc (TYPE_2__*,int) ;

__attribute__((used)) static void parse_index_obj_node_param(IndexItem *item, const char *text, UINT code_page)
{
    const char *ptr;
    LPWSTR *param;
    int len;

    ptr = get_attr(text, "name", &len);
    if(!ptr) {
        WARN("name attr not found\n");
        return;
    }




    if(item->itemFlags == 0x11 && (!_strnicmp("name", ptr, len) || !_strnicmp("local", ptr, len)))
        item_realloc(item, item->nItems+1);
    if(!_strnicmp("keyword", ptr, len)) {
        param = &item->keyword;
    }else if(!item->keyword && !_strnicmp("name", ptr, len)) {




        param = &item->keyword;
    }else if(!_strnicmp("name", ptr, len)) {
        item->itemFlags |= 0x01;
        param = &item->items[item->nItems-1].name;
    }else if(!_strnicmp("local", ptr, len)) {
        item->itemFlags |= 0x10;
        param = &item->items[item->nItems-1].local;
    }else {
        WARN("unhandled param %s\n", debugstr_an(ptr, len));
        return;
    }

    ptr = get_attr(text, "value", &len);
    if(!ptr) {
        WARN("value attr not found\n");
        return;
    }

    *param = decode_html(ptr, len, code_page);
}
