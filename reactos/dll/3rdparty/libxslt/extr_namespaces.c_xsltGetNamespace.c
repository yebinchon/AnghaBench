
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int const xmlChar ;
struct TYPE_21__ {int doc; } ;
struct TYPE_20__ {int * prefix; int const* href; } ;
struct TYPE_19__ {int * nsAliases; } ;
struct TYPE_18__ {TYPE_2__* style; } ;


 int const* UNDEFINED_DEFAULT_NS ;
 scalar_t__ xmlHashLookup (int *,int const*) ;
 TYPE_3__* xmlSearchNs (int ,TYPE_4__*,int *) ;
 TYPE_3__* xsltGetSpecialNamespace (TYPE_1__*,TYPE_4__*,int const*,int *,TYPE_4__*) ;
 TYPE_2__* xsltNextImport (TYPE_2__*) ;

xmlNsPtr
xsltGetNamespace(xsltTransformContextPtr ctxt, xmlNodePtr cur, xmlNsPtr ns,
          xmlNodePtr out)
{

    if (ns == ((void*)0))
 return(((void*)0));
    {
 xsltStylesheetPtr style;
 const xmlChar *URI = ((void*)0);

 if ((ctxt == ((void*)0)) || (cur == ((void*)0)) || (out == ((void*)0)))
     return(((void*)0));

 style = ctxt->style;
 while (style != ((void*)0)) {
     if (style->nsAliases != ((void*)0))
  URI = (const xmlChar *)
  xmlHashLookup(style->nsAliases, ns->href);
     if (URI != ((void*)0))
  break;

     style = xsltNextImport(style);
 }


 if (URI == UNDEFINED_DEFAULT_NS) {
     return(xsltGetSpecialNamespace(ctxt, cur, ((void*)0), ((void*)0), out));
 } else if (URI == ((void*)0))
     URI = ns->href;

 return(xsltGetSpecialNamespace(ctxt, cur, URI, ns->prefix, out));
    }

}
