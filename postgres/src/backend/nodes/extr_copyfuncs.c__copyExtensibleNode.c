
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int extnodename; } ;
struct TYPE_8__ {int (* nodeCopy ) (TYPE_2__*,TYPE_2__ const*) ;int node_size; } ;
typedef TYPE_1__ ExtensibleNodeMethods ;
typedef TYPE_2__ ExtensibleNode ;


 int COPY_STRING_FIELD (int ) ;
 TYPE_1__* GetExtensibleNodeMethods (int ,int) ;
 int T_ExtensibleNode ;
 int extnodename ;
 scalar_t__ newNode (int ,int ) ;
 int stub1 (TYPE_2__*,TYPE_2__ const*) ;

__attribute__((used)) static ExtensibleNode *
_copyExtensibleNode(const ExtensibleNode *from)
{
 ExtensibleNode *newnode;
 const ExtensibleNodeMethods *methods;

 methods = GetExtensibleNodeMethods(from->extnodename, 0);
 newnode = (ExtensibleNode *) newNode(methods->node_size,
           T_ExtensibleNode);
 COPY_STRING_FIELD(extnodename);


 methods->nodeCopy(newnode, from);

 return newnode;
}
