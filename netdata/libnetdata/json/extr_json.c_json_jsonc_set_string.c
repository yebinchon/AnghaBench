
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; } ;
struct TYPE_5__ {int* name; TYPE_1__ data; int type; } ;
typedef TYPE_2__ JSON_ENTRY ;


 int JSON_STRING ;
 int memcpy (int*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static inline void json_jsonc_set_string(JSON_ENTRY *e,char *key,const char *value) {
    size_t length = strlen(key);
    e->type = JSON_STRING;
    memcpy(e->name,key,length);
    e->name[length] = 0x00;
    e->data.string = (char *) value;
}
