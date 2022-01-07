
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xmlChar ;


 int xsltProcessUserParamInternal (int ,int const*,int const*,int) ;

int
xsltEvalOneUserParam(xsltTransformContextPtr ctxt,
       const xmlChar * name,
       const xmlChar * value) {
    return xsltProcessUserParamInternal(ctxt, name, value,
                          1 );
}
