
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int chm_file; } ;
struct TYPE_5__ {TYPE_4__ merge; void* local; void* name; } ;
typedef void* LPWSTR ;
typedef TYPE_1__ ContentItem ;


 int SetChmPath (TYPE_4__*,int ,void*) ;
 int WARN (char*,...) ;
 int _strnicmp (char*,char const*,int) ;
 int debugstr_an (char const*,int) ;
 void* decode_html (char const*,int,int ) ;
 char* get_attr (char const*,char*,int*) ;
 int heap_free (void*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static void parse_obj_node_param(ContentItem *item, ContentItem *hhc_root, const char *text, UINT code_page)
{
    const char *ptr;
    LPWSTR *param, merge;
    int len;

    ptr = get_attr(text, "name", &len);
    if(!ptr) {
        WARN("name attr not found\n");
        return;
    }

    if(!_strnicmp("name", ptr, len)) {
        param = &item->name;
    }else if(!_strnicmp("merge", ptr, len)) {
        param = &merge;
    }else if(!_strnicmp("local", ptr, len)) {
        param = &item->local;
    }else {
        WARN("unhandled param %s\n", debugstr_an(ptr, len));
        return;
    }

    ptr = get_attr(text, "value", &len);
    if(!ptr) {
        WARN("value attr not found\n");
        return;
    }






    if(param == &item->local && strstr(ptr, "::"))
    {
        const char *local = strstr(ptr, "::")+2;
        int local_len = len-(local-ptr);

        item->local = decode_html(local, local_len, code_page);
        param = &merge;
    }

    *param = decode_html(ptr, len, code_page);

    if(param == &merge) {
        SetChmPath(&item->merge, hhc_root->merge.chm_file, merge);
        heap_free(merge);
    }
}
