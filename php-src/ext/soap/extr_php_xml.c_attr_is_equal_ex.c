
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlAttrPtr ;
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_6__ {scalar_t__ href; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* attr_find_ns (TYPE_2__*) ;
 scalar_t__ strcmp (char*,char*) ;

int attr_is_equal_ex(xmlAttrPtr node, char *name, char *ns)
{
 if (name == ((void*)0) || strcmp((char*)node->name, name) == 0) {
  if (ns) {
   xmlNsPtr nsPtr = attr_find_ns(node);
   if (nsPtr) {
    return (strcmp((char*)nsPtr->href, ns) == 0);
   } else {
    return FALSE;
   }
  }
  return TRUE;
 }
 return FALSE;
}
