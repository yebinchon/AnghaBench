
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_10__ {scalar_t__* content; } ;
struct TYPE_9__ {int lasttuse; int lasttsize; scalar_t__* lasttext; } ;


 int INT_MAX ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 int xmlNodeAddContent (TYPE_2__*,scalar_t__ const*) ;
 scalar_t__ xmlRealloc (scalar_t__*,int) ;
 int xmlStrlen (scalar_t__*) ;
 int xsltTransformError (TYPE_1__*,int *,TYPE_2__*,char*) ;

__attribute__((used)) static xmlNodePtr
xsltAddTextString(xsltTransformContextPtr ctxt, xmlNodePtr target,
    const xmlChar *string, int len) {



    if ((len <= 0) || (string == ((void*)0)) || (target == ((void*)0)))
        return(target);

    if (ctxt->lasttext == target->content) {
        int minSize;


        if (len >= INT_MAX - ctxt->lasttuse) {
            xsltTransformError(ctxt, ((void*)0), target,
                "xsltCopyText: text allocation failed\n");
            return(((void*)0));
        }
        minSize = ctxt->lasttuse + len + 1;

        if (ctxt->lasttsize < minSize) {
     xmlChar *newbuf;
     int size;
            int extra;


            extra = minSize < 100 ? 100 : minSize;


            if (extra > INT_MAX - ctxt->lasttsize) {
                size = INT_MAX;
            }
            else {
                size = ctxt->lasttsize + extra;
            }

     newbuf = (xmlChar *) xmlRealloc(target->content,size);
     if (newbuf == ((void*)0)) {
  xsltTransformError(ctxt, ((void*)0), target,
   "xsltCopyText: text allocation failed\n");
  return(((void*)0));
     }
     ctxt->lasttsize = size;
     ctxt->lasttext = newbuf;
     target->content = newbuf;
 }
 memcpy(&(target->content[ctxt->lasttuse]), string, len);
 ctxt->lasttuse += len;
 target->content[ctxt->lasttuse] = 0;
    } else {
 xmlNodeAddContent(target, string);
 ctxt->lasttext = target->content;
 len = xmlStrlen(target->content);
 ctxt->lasttsize = len;
 ctxt->lasttuse = len;
    }
    return(target);
}
