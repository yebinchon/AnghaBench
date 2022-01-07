
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t end; size_t start; } ;
typedef TYPE_2__ jsmntok_t ;
struct TYPE_7__ {char* string; } ;
struct TYPE_9__ {char* original_string; int (* callback_function ) (TYPE_3__*) ;TYPE_1__ data; int type; } ;
typedef TYPE_3__ JSON_ENTRY ;


 int JSON_STRING ;
 int stub1 (TYPE_3__*) ;

size_t json_walk_string(char *js, jsmntok_t *t, size_t start, JSON_ENTRY *e)
{
    char old = js[t[start].end];
    js[t[start].end] = '\0';
    e->original_string = &js[t[start].start];

    e->type = JSON_STRING;
    e->data.string = e->original_string;
    if(e->callback_function) e->callback_function(e);
    js[t[start].end] = old;
    return 1;
}
