
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltKeyDefPtr ;
typedef int xsltKeyDef ;
typedef int xmlChar ;
struct TYPE_4__ {int * nsList; void* nameURI; void* name; } ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 void* xmlStrdup (int const*) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltKeyDefPtr
xsltNewKeyDef(const xmlChar *name, const xmlChar *nameURI) {
    xsltKeyDefPtr cur;

    cur = (xsltKeyDefPtr) xmlMalloc(sizeof(xsltKeyDef));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewKeyDef : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltKeyDef));
    if (name != ((void*)0))
 cur->name = xmlStrdup(name);
    if (nameURI != ((void*)0))
 cur->nameURI = xmlStrdup(nameURI);
    cur->nsList = ((void*)0);
    return(cur);
}
