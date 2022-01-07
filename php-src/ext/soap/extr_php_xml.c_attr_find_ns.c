
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xmlNsPtr ;
typedef TYPE_1__* xmlAttrPtr ;
struct TYPE_5__ {scalar_t__ ns; } ;
struct TYPE_4__ {TYPE_2__* parent; int doc; scalar_t__ ns; } ;


 scalar_t__ xmlSearchNs (int ,TYPE_2__*,int *) ;

xmlNsPtr attr_find_ns(xmlAttrPtr node)
{
 if (node->ns) {
  return node->ns;
 } else if (node->parent->ns) {
  return node->parent->ns;
 } else {
  return xmlSearchNs(node->doc, node->parent, ((void*)0));
 }
}
