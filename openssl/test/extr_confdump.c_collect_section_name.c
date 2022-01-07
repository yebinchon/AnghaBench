
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int section; int * name; } ;
typedef TYPE_1__ CONF_VALUE ;


 int section_names ;
 int sk_OPENSSL_CSTRING_push (int ,int ) ;

__attribute__((used)) static void collect_section_name(CONF_VALUE *v)
{

    if (v->name == ((void*)0))
        sk_OPENSSL_CSTRING_push(section_names, v->section);
}
