
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltUseAttrSetPtr ;
typedef int xsltUseAttrSet ;
typedef int xmlChar ;
struct TYPE_4__ {int const* ns; int const* ncname; } ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltGenericError (int ,char*) ;
 int xsltGenericErrorContext ;

__attribute__((used)) static xsltUseAttrSetPtr
xsltNewUseAttrSet(const xmlChar *ncname, const xmlChar *ns) {
    xsltUseAttrSetPtr cur;

    cur = (xsltUseAttrSetPtr) xmlMalloc(sizeof(xsltUseAttrSet));
    if (cur == ((void*)0)) {
        xsltGenericError(xsltGenericErrorContext,
  "xsltNewUseAttrSet : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltUseAttrSet));
    cur->ncname = ncname;
    cur->ns = ns;
    return(cur);
}
