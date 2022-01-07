
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltKeyTablePtr ;
typedef int xsltKeyTable ;
typedef int xmlChar ;
struct TYPE_4__ {int keys; void* nameURI; void* name; } ;


 int memset (TYPE_1__*,int ,int) ;
 int xmlHashCreate (int ) ;
 scalar_t__ xmlMalloc (int) ;
 void* xmlStrdup (int const*) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltKeyTablePtr
xsltNewKeyTable(const xmlChar *name, const xmlChar *nameURI) {
    xsltKeyTablePtr cur;

    cur = (xsltKeyTablePtr) xmlMalloc(sizeof(xsltKeyTable));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewKeyTable : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltKeyTable));
    if (name != ((void*)0))
 cur->name = xmlStrdup(name);
    if (nameURI != ((void*)0))
 cur->nameURI = xmlStrdup(nameURI);
    cur->keys = xmlHashCreate(0);
    return(cur);
}
