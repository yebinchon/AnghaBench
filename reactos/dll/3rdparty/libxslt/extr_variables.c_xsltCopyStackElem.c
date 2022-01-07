
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltStackElemPtr ;
typedef int xsltStackElem ;
struct TYPE_5__ {int comp; int tree; int select; int nameURI; int name; int context; } ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltStackElemPtr
xsltCopyStackElem(xsltStackElemPtr elem) {
    xsltStackElemPtr cur;

    cur = (xsltStackElemPtr) xmlMalloc(sizeof(xsltStackElem));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltCopyStackElem : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltStackElem));
    cur->context = elem->context;
    cur->name = elem->name;
    cur->nameURI = elem->nameURI;
    cur->select = elem->select;
    cur->tree = elem->tree;
    cur->comp = elem->comp;
    return(cur);
}
