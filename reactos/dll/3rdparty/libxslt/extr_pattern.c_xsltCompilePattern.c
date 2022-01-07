
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xsltStylesheetPtr ;
typedef int xsltCompMatchPtr ;
typedef int xmlNodePtr ;
typedef int xmlDocPtr ;
typedef int xmlChar ;


 int xsltCompilePatternInternal (int const*,int ,int ,int ,int ,int ) ;

xsltCompMatchPtr
xsltCompilePattern(const xmlChar *pattern, xmlDocPtr doc,
            xmlNodePtr node, xsltStylesheetPtr style,
     xsltTransformContextPtr runtime) {
    return (xsltCompilePatternInternal(pattern, doc, node, style, runtime, 0));
}
