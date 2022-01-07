
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; int name; } ;
typedef TYPE_1__ SCString ;


 int strdup (char*) ;

void init_scstring(SCString *cstr, unsigned int size, char *name) {
 cstr->size = size;
 cstr->name = strdup (name);
}
