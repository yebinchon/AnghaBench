
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int extnodename; } ;
struct TYPE_8__ {int (* nodeEqual ) (TYPE_2__ const*,TYPE_2__ const*) ;} ;
typedef TYPE_1__ ExtensibleNodeMethods ;
typedef TYPE_2__ ExtensibleNode ;


 int COMPARE_STRING_FIELD (int ) ;
 TYPE_1__* GetExtensibleNodeMethods (int ,int) ;
 int extnodename ;
 int stub1 (TYPE_2__ const*,TYPE_2__ const*) ;

__attribute__((used)) static bool
_equalExtensibleNode(const ExtensibleNode *a, const ExtensibleNode *b)
{
 const ExtensibleNodeMethods *methods;

 COMPARE_STRING_FIELD(extnodename);


 methods = GetExtensibleNodeMethods(a->extnodename, 0);


 if (!methods->nodeEqual(a, b))
  return 0;

 return 1;
}
