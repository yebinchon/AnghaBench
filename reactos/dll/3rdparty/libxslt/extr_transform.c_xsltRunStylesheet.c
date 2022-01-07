
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltStylesheetPtr ;
typedef int xmlSAXHandlerPtr ;
typedef int xmlOutputBufferPtr ;
typedef int xmlDocPtr ;


 int xsltRunStylesheetUser (int ,int ,char const**,char const*,int ,int ,int *,int *) ;

int
xsltRunStylesheet(xsltStylesheetPtr style, xmlDocPtr doc,
                  const char **params, const char *output,
                  xmlSAXHandlerPtr SAX, xmlOutputBufferPtr IObuf)
{
    return(xsltRunStylesheetUser(style, doc, params, output, SAX, IObuf,
                   ((void*)0), ((void*)0)));
}
