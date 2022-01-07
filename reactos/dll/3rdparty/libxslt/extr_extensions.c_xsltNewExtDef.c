
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltExtDefPtr ;
typedef int xsltExtDef ;
typedef int xmlChar ;
struct TYPE_4__ {void* URI; void* prefix; } ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 void* xmlStrdup (int const*) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltExtDefPtr
xsltNewExtDef(const xmlChar * prefix, const xmlChar * URI)
{
    xsltExtDefPtr cur;

    cur = (xsltExtDefPtr) xmlMalloc(sizeof(xsltExtDef));
    if (cur == ((void*)0)) {
        xsltTransformError(((void*)0), ((void*)0), ((void*)0),
                           "xsltNewExtDef : malloc failed\n");
        return (((void*)0));
    }
    memset(cur, 0, sizeof(xsltExtDef));
    if (prefix != ((void*)0))
        cur->prefix = xmlStrdup(prefix);
    if (URI != ((void*)0))
        cur->URI = xmlStrdup(URI);
    return (cur);
}
