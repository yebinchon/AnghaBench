
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlNodePtr ;
typedef TYPE_1__* encodeTypePtr ;
struct TYPE_3__ {int type_str; int ns; } ;


 int set_ns_and_type_ex (int ,int ,int ) ;

__attribute__((used)) static void set_ns_and_type(xmlNodePtr node, encodeTypePtr type)
{
 set_ns_and_type_ex(node, type->ns, type->type_str);
}
