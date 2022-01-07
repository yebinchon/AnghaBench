
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateOpClassItem ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int class_args ;
 int itemtype ;
 int name ;
 int number ;
 int order_family ;
 int storedtype ;

__attribute__((used)) static bool
_equalCreateOpClassItem(const CreateOpClassItem *a, const CreateOpClassItem *b)
{
 COMPARE_SCALAR_FIELD(itemtype);
 COMPARE_NODE_FIELD(name);
 COMPARE_SCALAR_FIELD(number);
 COMPARE_NODE_FIELD(order_family);
 COMPARE_NODE_FIELD(class_args);
 COMPARE_NODE_FIELD(storedtype);

 return 1;
}
