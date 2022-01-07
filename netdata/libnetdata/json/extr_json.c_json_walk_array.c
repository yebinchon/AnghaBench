
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {size_t end; size_t start; size_t size; int type; } ;
typedef TYPE_2__ jsmntok_t ;
struct TYPE_15__ {size_t items; } ;
struct TYPE_17__ {char* original_string; char* name; char* fullname; size_t pos; int (* callback_function ) (TYPE_3__*) ;TYPE_1__ data; int type; } ;
typedef TYPE_3__ JSON_ENTRY ;






 int JSON_ARRAY ;
 int JSON_FULLNAME_LEN ;
 int JSON_NAME_LEN ;
 int info (char*,char*,char*) ;
 size_t json_walk_object (char*,TYPE_2__*,size_t,size_t,TYPE_3__*) ;
 size_t json_walk_primitive (char*,TYPE_2__*,size_t,TYPE_3__*) ;
 size_t json_walk_string (char*,TYPE_2__*,size_t,TYPE_3__*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int snprintfz (char*,int,char*,char*,size_t) ;
 int strlen (char*) ;
 int stub1 (TYPE_3__*) ;

size_t json_walk_array(char *js, jsmntok_t *t, size_t nest, size_t start, JSON_ENTRY *e)
{
    JSON_ENTRY ne;

    char old = js[t[start].end];
    js[t[start].end] = '\0';
    ne.original_string = &js[t[start].start];

    memcpy(&ne, e, sizeof(JSON_ENTRY));
    ne.type = JSON_ARRAY;
    ne.data.items = t[start].size;
    ne.callback_function = ((void*)0);
    ne.name[0]='\0';
    ne.fullname[0]='\0';
    if(e->callback_function) e->callback_function(&ne);
    js[t[start].end] = old;

    size_t i, init = start, size = t[start].size;

    start++;
    for(i = 0; i < size ; i++) {
        ne.pos = i;
        if (strlen(e->name) > JSON_NAME_LEN - 24 || strlen(e->fullname) > JSON_FULLNAME_LEN -24) {
            info("JSON: JSON walk_array ignoring element with name:%s fullname:%s",e->name, e->fullname);
            continue;
        }
        snprintfz(ne.name, JSON_NAME_LEN, "%s[%lu]", e->name, i);
        snprintfz(ne.fullname, JSON_FULLNAME_LEN, "%s[%lu]", e->fullname, i);

        switch(t[start].type) {
            case 129:
                start += json_walk_primitive(js, t, start, &ne);
                break;

            case 130:
                start += json_walk_object(js, t, nest + 1, start, &ne);
                break;

            case 131:
                start += json_walk_array(js, t, nest + 1, start, &ne);
                break;

            case 128:
                start += json_walk_string(js, t, start, &ne);
                break;
        }
    }
    return start - init;
}
