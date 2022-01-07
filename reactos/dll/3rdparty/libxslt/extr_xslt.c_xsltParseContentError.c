
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int errors; } ;


 scalar_t__ IS_XSLT_ELEM (TYPE_2__*) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_2__*,char*,int ) ;

__attribute__((used)) static void
xsltParseContentError(xsltStylesheetPtr style,
         xmlNodePtr node)
{
    if ((style == ((void*)0)) || (node == ((void*)0)))
 return;

    if (IS_XSLT_ELEM(node))
 xsltTransformError(((void*)0), style, node,
     "The XSLT-element '%s' is not allowed at this position.\n",
     node->name);
    else
 xsltTransformError(((void*)0), style, node,
     "The element '%s' is not allowed at this position.\n",
     node->name);
    style->errors++;
}
