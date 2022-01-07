
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlNodePtr ;
struct TYPE_4__ {int s; int member_0; } ;
typedef TYPE_1__ smart_str ;


 int ZSTR_VAL (int ) ;
 int get_type_str (int ,char*,char*,TYPE_1__*) ;
 int set_xsi_type (int ,int ) ;
 int smart_str_free (TYPE_1__*) ;

__attribute__((used)) static void set_ns_and_type_ex(xmlNodePtr node, char *ns, char *type)
{
 smart_str nstype = {0};
 get_type_str(node, ns, type, &nstype);
 set_xsi_type(node, ZSTR_VAL(nstype.s));
 smart_str_free(&nstype);
}
