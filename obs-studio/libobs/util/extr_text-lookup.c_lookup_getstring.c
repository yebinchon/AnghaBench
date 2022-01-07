
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct text_node {TYPE_2__* leaf; TYPE_1__ str; } ;
struct TYPE_4__ {char* value; } ;


 struct text_node* text_node_byname (struct text_node*,char const*) ;

__attribute__((used)) static inline bool lookup_getstring(const char *lookup_val, const char **out,
        struct text_node *node)
{
 struct text_node *child;
 char ch;

 if (!node)
  return 0;

 child = text_node_byname(node, lookup_val);
 if (!child)
  return 0;

 lookup_val += child->str.len;
 ch = *lookup_val;
 if (ch)
  return lookup_getstring(lookup_val, out, child);

 if (!child->leaf)
  return 0;

 *out = child->leaf->value;
 return 1;
}
