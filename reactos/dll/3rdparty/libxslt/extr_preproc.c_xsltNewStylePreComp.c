
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xsltStyleType ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef int xsltStylePreComp ;
typedef int xsltStyleItemWithParam ;
typedef int xsltStyleItemWhen ;
typedef int xsltStyleItemVariable ;
typedef int xsltStyleItemValueOf ;
typedef int xsltStyleItemText ;
typedef int xsltStyleItemSort ;
typedef int xsltStyleItemParam ;
typedef int xsltStyleItemPI ;
typedef int xsltStyleItemOtherwise ;
typedef int xsltStyleItemNumber ;
typedef int xsltStyleItemIf ;
typedef int xsltStyleItemForEach ;
typedef int xsltStyleItemElement ;
typedef int xsltStyleItemDocument ;
typedef int xsltStyleItemCopyOf ;
typedef int xsltStyleItemCopy ;
typedef int xsltStyleItemComment ;
typedef int xsltStyleItemChoose ;
typedef int xsltStyleItemCallTemplate ;
typedef int xsltStyleItemAttribute ;
typedef int xsltStyleItemApplyTemplates ;
typedef int xsltStyleItemApplyImports ;
typedef scalar_t__ xsltElemPreCompPtr ;
struct TYPE_8__ {int type; scalar_t__ next; int * func; } ;
struct TYPE_7__ {scalar_t__ preComps; int errors; } ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int * xsltApplyImports ;
 int * xsltApplyTemplates ;
 int * xsltAttribute ;
 int * xsltCallTemplate ;
 int * xsltChoose ;
 int * xsltComment ;
 int * xsltCopy ;
 int * xsltCopyOf ;
 int * xsltDocumentElem ;
 int * xsltElement ;
 int * xsltForEach ;
 int * xsltIf ;
 int * xsltNumber ;
 int * xsltProcessingInstruction ;
 int * xsltSort ;
 int * xsltText ;
 int xsltTransformError (int *,TYPE_1__*,int *,char*,...) ;
 int * xsltValueOf ;

__attribute__((used)) static xsltStylePreCompPtr
xsltNewStylePreComp(xsltStylesheetPtr style, xsltStyleType type) {
    xsltStylePreCompPtr cur;




    if (style == ((void*)0))
        return(((void*)0));
    cur = (xsltStylePreCompPtr) xmlMalloc(sizeof(xsltStylePreComp));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), style, ((void*)0),
  "xsltNewStylePreComp : malloc failed\n");
 style->errors++;
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltStylePreComp));





    cur->type = type;
    switch (cur->type) {
        case 143:
            cur->func = xsltCopy;break;
        case 133:
            cur->func = xsltSort;break;
        case 132:
            cur->func = xsltText;break;
        case 140:
            cur->func = xsltElement;break;
        case 147:
            cur->func = xsltAttribute;break;
        case 144:
            cur->func = xsltComment;break;
        case 134:
            cur->func = xsltProcessingInstruction;
     break;
        case 142:
            cur->func = xsltCopyOf;break;
        case 131:
            cur->func = xsltValueOf;break;
        case 137:
            cur->func = xsltNumber;break;
        case 149:
            cur->func = xsltApplyImports;break;
        case 146:
            cur->func = xsltCallTemplate;break;
        case 148:
            cur->func = xsltApplyTemplates;break;
        case 145:
            cur->func = xsltChoose;break;
        case 138:
            cur->func = xsltIf;break;
        case 139:
            cur->func = xsltForEach;break;
        case 141:
            cur->func = xsltDocumentElem;break;
 case 128:
 case 135:
 case 130:
 case 129:
     break;
 default:
 if (cur->func == ((void*)0)) {
     xsltTransformError(((void*)0), style, ((void*)0),
      "xsltNewStylePreComp : no function for type %d\n", type);
     style->errors++;
 }
    }
    cur->next = style->preComps;
    style->preComps = (xsltElemPreCompPtr) cur;

    return(cur);
}
