
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltKeyDefPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef char xmlChar ;
struct TYPE_15__ {int doc; } ;
struct TYPE_14__ {char const* match; int nsNr; struct TYPE_14__* next; int * usecomp; int * comp; int ** nsList; TYPE_3__* inst; void* use; } ;
struct TYPE_13__ {TYPE_2__* keys; int errors; } ;


 scalar_t__ IS_BLANK_CH (char const) ;
 int XML_XPATH_NOVAR ;
 int skipPredicate (char const*,int) ;
 int xmlFree (char*) ;
 int ** xmlGetNsList (int ,TYPE_3__*) ;
 char* xmlStrcat (char*,char*) ;
 void* xmlStrdup (char const*) ;
 char* xmlStrncat (char*,char const*,int) ;
 int xsltFreeKeyDef (TYPE_2__*) ;
 int xsltGenericDebug (int ,char*,char const*,...) ;
 int xsltGenericDebugContext ;
 TYPE_2__* xsltNewKeyDef (char const*,char const*) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_3__*,char*,...) ;
 void* xsltXPathCompile (TYPE_1__*,char const*) ;
 void* xsltXPathCompileFlags (TYPE_1__*,char const*,int ) ;

int
xsltAddKey(xsltStylesheetPtr style, const xmlChar *name,
    const xmlChar *nameURI, const xmlChar *match,
    const xmlChar *use, xmlNodePtr inst) {
    xsltKeyDefPtr key;
    xmlChar *pattern = ((void*)0);
    int current, end, start, i = 0;

    if ((style == ((void*)0)) || (name == ((void*)0)) || (match == ((void*)0)) || (use == ((void*)0)))
 return(-1);






    key = xsltNewKeyDef(name, nameURI);
    key->match = xmlStrdup(match);
    key->use = xmlStrdup(use);
    key->inst = inst;
    key->nsList = xmlGetNsList(inst->doc, inst);
    if (key->nsList != ((void*)0)) {
        while (key->nsList[i] != ((void*)0))
     i++;
    }
    key->nsNr = i;




    current = end = 0;
    while (match[current] != 0) {
 start = current;
 while (IS_BLANK_CH(match[current]))
     current++;
 end = current;
 while ((match[end] != 0) && (match[end] != '|')) {
     if (match[end] == '[') {
         end = skipPredicate(match, end);
  if (end <= 0) {
      xsltTransformError(((void*)0), style, inst,
          "xsl:key : 'match' pattern is malformed: %s",
          key->match);
      if (style != ((void*)0)) style->errors++;
      goto error;
  }
     } else
  end++;
 }
 if (current == end) {
     xsltTransformError(((void*)0), style, inst,
          "xsl:key : 'match' pattern is empty\n");
     if (style != ((void*)0)) style->errors++;
     goto error;
 }
 if (match[start] != '/') {
     pattern = xmlStrcat(pattern, (xmlChar *)"//");
     if (pattern == ((void*)0)) {
  if (style != ((void*)0)) style->errors++;
  goto error;
     }
 }
 pattern = xmlStrncat(pattern, &match[start], end - start);
 if (pattern == ((void*)0)) {
     if (style != ((void*)0)) style->errors++;
     goto error;
 }

 if (match[end] == '|') {
     pattern = xmlStrcat(pattern, (xmlChar *)"|");
     end++;
 }
 current = end;
    }
    if (pattern == ((void*)0)) {
        xsltTransformError(((void*)0), style, inst,
                           "xsl:key : 'match' pattern is empty\n");
        if (style != ((void*)0)) style->errors++;
        goto error;
    }
    key->comp = xsltXPathCompile(style, pattern);

    if (key->comp == ((void*)0)) {
 xsltTransformError(((void*)0), style, inst,
  "xsl:key : 'match' pattern compilation failed '%s'\n",
           pattern);
 if (style != ((void*)0)) style->errors++;
    }



    key->usecomp = xsltXPathCompile(style, use);

    if (key->usecomp == ((void*)0)) {
 xsltTransformError(((void*)0), style, inst,
  "xsl:key : 'use' expression compilation failed '%s'\n",
           use);
 if (style != ((void*)0)) style->errors++;
    }






    if (style->keys == ((void*)0)) {
 style->keys = key;
    } else {
        xsltKeyDefPtr prev = style->keys;

 while (prev->next != ((void*)0))
     prev = prev->next;

 prev->next = key;
    }
    key->next = ((void*)0);
    key = ((void*)0);

error:
    if (pattern != ((void*)0))
 xmlFree(pattern);
    if (key != ((void*)0))
        xsltFreeKeyDef(key);
    return(0);
}
