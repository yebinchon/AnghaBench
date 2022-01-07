
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ CONF ;


 int collect_section_name ;
 int lh_CONF_VALUE_doall (int ,int ) ;
 int section_name_cmp ;
 int section_names ;
 int sk_OPENSSL_CSTRING_new (int ) ;
 int sk_OPENSSL_CSTRING_sort (int ) ;

__attribute__((used)) static void collect_all_sections(const CONF *cnf)
{
    section_names = sk_OPENSSL_CSTRING_new(section_name_cmp);
    lh_CONF_VALUE_doall(cnf->data, collect_section_name);
    sk_OPENSSL_CSTRING_sort(section_names);
}
