
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xsltStackElemPtr ;


 int xsltAddStackElem (int ,int ) ;

int
xsltAddStackElemList(xsltTransformContextPtr ctxt, xsltStackElemPtr elems)
{
    return(xsltAddStackElem(ctxt, elems));
}
