
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {size_t end; size_t start; size_t size; int type; } ;
typedef TYPE_1__ jsmntok_t ;
struct TYPE_15__ {char* name; char* fullname; char* original_string; int (* callback_function ) (TYPE_2__*) ;int type; int * callback_data; } ;
typedef TYPE_2__ JSON_ENTRY ;






 int JSON_FULLNAME_LEN ;
 int JSON_NAME_LEN ;
 int JSON_OBJECT ;
 int freez (char*) ;
 size_t json_walk_array (char*,TYPE_1__*,size_t,size_t,TYPE_2__*) ;
 size_t json_walk_primitive (char*,TYPE_1__*,size_t,TYPE_2__*) ;
 size_t json_walk_string (char*,TYPE_1__*,size_t,TYPE_2__*) ;
 char* mallocz (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int stub1 (TYPE_2__*) ;
 int unlikely (int) ;

size_t json_walk_object(char *js, jsmntok_t *t, size_t nest, size_t start, JSON_ENTRY *e)
{
    JSON_ENTRY ne = {
            .name = "",
            .fullname = "",
            .callback_data = ((void*)0),
            .callback_function = ((void*)0)
    };

    char old = js[t[start].end];
    js[t[start].end] = '\0';
    ne.original_string = &js[t[start].start];
    memcpy(&ne, e, sizeof(JSON_ENTRY));
    ne.type = JSON_OBJECT;
    ne.callback_function = ((void*)0);
    if(e->callback_function) e->callback_function(&ne);
    js[t[start].end] = old;

    int key = 1;
    size_t i, init = start, size = t[start].size;

    start++;
    for(i = 0; i < size ; i++) {
        switch(t[start].type) {
            case 129:
                start += json_walk_primitive(js, t, start, &ne);
                key = 1;
                break;

            case 130:
                start += json_walk_object(js, t, nest + 1, start, &ne);
                key = 1;
                break;

            case 131:
                start += json_walk_array(js, t, nest + 1, start, &ne);
                key = 1;
                break;

            case 128:
            default:
                if(key) {
                    int len = t[start].end - t[start].start;
                    if (unlikely(len>JSON_NAME_LEN)) len=JSON_NAME_LEN;
                    strncpy(ne.name, &js[t[start].start], len);
                    ne.name[len] = '\0';
                    len=strlen(e->fullname) + strlen(e->fullname[0]?".":"") + strlen(ne.name);
                    char *c = mallocz((len+1)*sizeof(char));
                    sprintf(c,"%s%s%s", e->fullname, e->fullname[0]?".":"", ne.name);
                    if (unlikely(len>JSON_FULLNAME_LEN)) len=JSON_FULLNAME_LEN;
                    strncpy(ne.fullname, c, len);
                    freez(c);
                    start++;
                    key = 0;
                }
                else {
                    start += json_walk_string(js, t, start, &ne);
                    key = 1;
                }
                break;
        }
    }
    return start - init;
}
