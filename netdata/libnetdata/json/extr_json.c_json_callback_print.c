
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; int boolean; int number; int items; } ;
struct TYPE_5__ {int type; int (* callback_function ) (TYPE_2__*) ;TYPE_1__ data; int name; } ;
typedef TYPE_2__ JSON_ENTRY ;
typedef int BUFFER ;
 int * buffer_create (int) ;
 int buffer_free (int *) ;
 int buffer_sprintf (int *,char*,int ) ;
 int buffer_strcat (int *,char*) ;
 int buffer_tostring (int *) ;
 int info (char*,int ) ;
 int sprintf (char*,char*,int ) ;

int json_callback_print(JSON_ENTRY *e)
{
    BUFFER *wb=buffer_create(300);

    buffer_sprintf(wb,"%s = ", e->name);
    char txt[50];
    switch(e->type) {
        case 129:
            e->callback_function = json_callback_print;
            buffer_strcat(wb,"OBJECT");
            break;

        case 133:
            e->callback_function = json_callback_print;
            sprintf(txt,"ARRAY[%lu]", e->data.items);
            buffer_strcat(wb, txt);
            break;

        case 128:
            buffer_strcat(wb, e->data.string);
            break;

        case 130:
            sprintf(txt,"%Lf", e->data.number);
            buffer_strcat(wb,txt);

            break;

        case 132:
            buffer_strcat(wb, e->data.boolean?"TRUE":"FALSE");
            break;

        case 131:
            buffer_strcat(wb,"NULL");
            break;
    }
    info("JSON: %s", buffer_tostring(wb));
    buffer_free(wb);
    return 0;
}
