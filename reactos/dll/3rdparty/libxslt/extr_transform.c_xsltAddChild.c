
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlNodePtr ;


 int * xmlAddChild (int *,int *) ;
 int xmlFreeNode (int *) ;

__attribute__((used)) static xmlNodePtr
xsltAddChild(xmlNodePtr parent, xmlNodePtr cur) {
   xmlNodePtr ret;

   if (cur == ((void*)0))
       return(((void*)0));
   if (parent == ((void*)0)) {
       xmlFreeNode(cur);
       return(((void*)0));
   }
   ret = xmlAddChild(parent, cur);

   return(ret);
}
