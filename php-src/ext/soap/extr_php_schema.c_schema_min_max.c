
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlAttrPtr ;
typedef TYPE_4__* sdlContentModelPtr ;
struct TYPE_11__ {int min_occurs; int max_occurs; } ;
struct TYPE_10__ {TYPE_1__* children; } ;
struct TYPE_9__ {int properties; } ;
struct TYPE_8__ {scalar_t__ content; } ;


 void* atoi (char*) ;
 TYPE_3__* get_attribute (int ,char*) ;
 int strncmp (char*,char*,int) ;

void schema_min_max(xmlNodePtr node, sdlContentModelPtr model)
{
 xmlAttrPtr attr = get_attribute(node->properties, "minOccurs");

 if (attr) {
  model->min_occurs = atoi((char*)attr->children->content);
 } else {
  model->min_occurs = 1;
 }

 attr = get_attribute(node->properties, "maxOccurs");
 if (attr) {
  if (!strncmp((char*)attr->children->content, "unbounded", sizeof("unbounded"))) {
   model->max_occurs = -1;
  } else {
   model->max_occurs = atoi((char*)attr->children->content);
  }
 } else {
  model->max_occurs = 1;
 }
}
