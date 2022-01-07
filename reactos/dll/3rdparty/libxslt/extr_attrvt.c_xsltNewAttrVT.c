
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltAttrVTPtr ;
typedef int xsltAttrVT ;
struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ strstart; int max_seg; scalar_t__ nb_seg; } ;
struct TYPE_7__ {TYPE_2__* attVTs; int errors; } ;


 int MAX_AVT_SEG ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,TYPE_1__*,int *,char*) ;

__attribute__((used)) static xsltAttrVTPtr
xsltNewAttrVT(xsltStylesheetPtr style) {
    xsltAttrVTPtr cur;

    cur = (xsltAttrVTPtr) xmlMalloc(sizeof(xsltAttrVT));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), style, ((void*)0),
  "xsltNewAttrVTPtr : malloc failed\n");
 if (style != ((void*)0)) style->errors++;
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltAttrVT));

    cur->nb_seg = 0;
    cur->max_seg = MAX_AVT_SEG;
    cur->strstart = 0;
    cur->next = style->attVTs;




    style->attVTs = (xsltAttrVTPtr) cur;

    return(cur);
}
