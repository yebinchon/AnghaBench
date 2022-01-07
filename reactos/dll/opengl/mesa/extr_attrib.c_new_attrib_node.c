
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_attrib_node {int kind; } ;
typedef int GLbitfield ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static struct gl_attrib_node *new_attrib_node( GLbitfield kind )
{
   struct gl_attrib_node *an;

   an = (struct gl_attrib_node *) malloc( sizeof(struct gl_attrib_node) );
   if (an) {
      an->kind = kind;
   }
   return an;
}
