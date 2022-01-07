
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlXPathObjectPtr ;
typedef TYPE_2__* xmlXPathContextPtr ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
typedef int * xmlBufferPtr ;
struct TYPE_8__ {int node; } ;
struct TYPE_7__ {double floatval; } ;


 int xmlBufferCCat (int *,char*) ;
 int xmlBufferCat (int *,int const*) ;
 int xmlBufferContent (int *) ;
 int * xmlBufferCreate () ;
 int xmlBufferFree (int *) ;
 TYPE_1__* xmlXPathEvalExpression (int ,TYPE_2__*) ;
 int xmlXPathFreeObject (TYPE_1__*) ;

__attribute__((used)) static int
xsltNumberFormatGetValue(xmlXPathContextPtr context,
    xmlNodePtr node,
    const xmlChar *value,
    double *number)
{
    int amount = 0;
    xmlBufferPtr pattern;
    xmlXPathObjectPtr obj;

    pattern = xmlBufferCreate();
    if (pattern != ((void*)0)) {
 xmlBufferCCat(pattern, "number(");
 xmlBufferCat(pattern, value);
 xmlBufferCCat(pattern, ")");
 context->node = node;
 obj = xmlXPathEvalExpression(xmlBufferContent(pattern),
         context);
 if (obj != ((void*)0)) {
     *number = obj->floatval;
     amount++;
     xmlXPathFreeObject(obj);
 }
 xmlBufferFree(pattern);
    }
    return amount;
}
