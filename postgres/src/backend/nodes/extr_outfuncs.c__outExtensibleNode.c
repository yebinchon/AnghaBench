
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int extnodename; } ;
struct TYPE_6__ {int (* nodeOut ) (int ,TYPE_2__ const*) ;} ;
typedef int StringInfo ;
typedef TYPE_1__ ExtensibleNodeMethods ;
typedef TYPE_2__ ExtensibleNode ;


 TYPE_1__* GetExtensibleNodeMethods (int ,int) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int extnodename ;
 int stub1 (int ,TYPE_2__ const*) ;

__attribute__((used)) static void
_outExtensibleNode(StringInfo str, const ExtensibleNode *node)
{
 const ExtensibleNodeMethods *methods;

 methods = GetExtensibleNodeMethods(node->extnodename, 0);

 WRITE_NODE_TYPE("EXTENSIBLENODE");

 WRITE_STRING_FIELD(extnodename);


 methods->nodeOut(str, node);
}
