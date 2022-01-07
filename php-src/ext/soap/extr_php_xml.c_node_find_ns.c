
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xmlNsPtr ;
typedef TYPE_1__* xmlNodePtr ;
struct TYPE_4__ {int doc; scalar_t__ ns; } ;


 scalar_t__ xmlSearchNs (int ,TYPE_1__*,int *) ;

xmlNsPtr node_find_ns(xmlNodePtr node)
{
 if (node->ns) {
  return node->ns;
 } else {
  return xmlSearchNs(node->doc, node, ((void*)0));
 }
}
