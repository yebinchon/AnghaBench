
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int * xsltStylesheetPtr ;
typedef TYPE_1__* xsltStylePreCompPtr ;
typedef TYPE_1__* xsltStyleItemVariablePtr ;
typedef TYPE_3__* xmlNodePtr ;
struct TYPE_10__ {scalar_t__ type; int * children; scalar_t__ psvi; } ;
struct TYPE_9__ {int select; int ns; int * name; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_CCTXT (int *) ;
 int xsltGenericDebug (int ,char*,int *) ;
 int xsltGenericDebugContext ;
 int xsltParseSequenceConstructor (int ,int *) ;
 int xsltParseTemplateContent (int *,TYPE_3__*) ;
 int xsltRegisterGlobalVariable (int *,int *,int ,int ,int *,TYPE_1__*,int *) ;
 int xsltStylePreCompute (int *,TYPE_3__*) ;
 int xsltTransformError (int *,int *,TYPE_3__*,char*) ;

void
xsltParseGlobalVariable(xsltStylesheetPtr style, xmlNodePtr cur)
{



    xsltStylePreCompPtr comp;


    if ((cur == ((void*)0)) || (style == ((void*)0)) || (cur->type != XML_ELEMENT_NODE))
 return;
    xsltStylePreCompute(style, cur);
    comp = (xsltStylePreCompPtr) cur->psvi;

    if (comp == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
      "xsl:variable : compilation failed\n");
 return;
    }

    if (comp->name == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsl:variable : missing name attribute\n");
 return;
    }




    if (cur->children != ((void*)0)) {



        xsltParseTemplateContent(style, cur);

    }





    xsltRegisterGlobalVariable(style, comp->name, comp->ns,
 comp->select, cur->children, (xsltStylePreCompPtr) comp,
 ((void*)0));
}
