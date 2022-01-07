
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extnodename; } ;
typedef TYPE_1__ ExtensibleNodeMethods ;


 int RegisterExtensibleNodeEntry (int *,char*,int ,TYPE_1__ const*) ;
 int extensible_node_methods ;

void
RegisterExtensibleNodeMethods(const ExtensibleNodeMethods *methods)
{
 RegisterExtensibleNodeEntry(&extensible_node_methods,
        "Extensible Node Methods",
        methods->extnodename,
        methods);
}
