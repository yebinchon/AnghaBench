
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_1__ jsmntok_t ;
struct TYPE_9__ {char* name; char* fullname; void* callback_data; int (* callback_function ) (struct json_entry*) ;int type; } ;
typedef TYPE_2__ JSON_ENTRY ;






 int JSON_ARRAY ;
 int JSON_OBJECT ;
 int json_walk_array (char*,TYPE_1__*,int ,int ,TYPE_2__*) ;
 int json_walk_object (char*,TYPE_1__*,int ,int ,TYPE_2__*) ;

size_t json_walk_tree(char *js, jsmntok_t *t, void *callback_data, int (*callback_function)(struct json_entry *))
{
    JSON_ENTRY e = {
            .name = "",
            .fullname = "",
            .callback_data = callback_data,
            .callback_function = callback_function
    };

    switch (t[0].type) {
        case 130:
            e.type = JSON_OBJECT;
            json_walk_object(js, t, 0, 0, &e);
            break;

        case 131:
            e.type = JSON_ARRAY;
            json_walk_array(js, t, 0, 0, &e);
            break;

        case 129:
        case 128:
            break;
    }

    return 1;
}
