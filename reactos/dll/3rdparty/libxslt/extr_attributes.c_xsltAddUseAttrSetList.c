
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltUseAttrSetPtr ;
typedef int xmlChar ;
struct TYPE_5__ {struct TYPE_5__* next; int const* ns; int const* ncname; } ;


 TYPE_1__* xsltNewUseAttrSet (int const*,int const*) ;

__attribute__((used)) static xsltUseAttrSetPtr
xsltAddUseAttrSetList(xsltUseAttrSetPtr list, const xmlChar *ncname,
                      const xmlChar *ns) {
    xsltUseAttrSetPtr next, cur;

    if (ncname == ((void*)0))
        return(list);
    if (list == ((void*)0))
 return(xsltNewUseAttrSet(ncname, ns));
    cur = list;
    while (cur != ((void*)0)) {
        if ((cur->ncname == ncname) && (cur->ns == ns))
            return(list);
 next = cur->next;
 if (next == ((void*)0)) {
     cur->next = xsltNewUseAttrSet(ncname, ns);
     return(list);
 }
 cur = next;
    }
    return(list);
}
