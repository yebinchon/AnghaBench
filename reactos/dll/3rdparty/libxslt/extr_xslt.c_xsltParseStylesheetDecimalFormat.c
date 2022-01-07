
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltDecimalFormatPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_16__ {scalar_t__ type; int * children; } ;
struct TYPE_15__ {int * patternSeparator; int * digit; int * zeroDigit; int * permille; int * percent; int * noNumber; int * minusSign; int * infinity; int * grouping; int * decimalPoint; struct TYPE_15__* next; } ;
struct TYPE_14__ {TYPE_2__* decimalFormat; int errors; int warnings; } ;


 int const* BAD_CAST (char*) ;
 scalar_t__ XML_ELEMENT_NODE ;
 int xmlFree (int *) ;
 int * xmlGetNsProp (TYPE_3__*,int const*,int *) ;
 scalar_t__ xmlValidateQName (int *,int ) ;
 TYPE_2__* xsltDecimalFormatGetByQName (TYPE_1__*,int const*,int *) ;
 int * xsltGetQNameURI (TYPE_3__*,int **) ;
 TYPE_2__* xsltNewDecimalFormat (int const*,int *) ;
 int xsltParseContentError (TYPE_1__*,int *) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_3__*,char*,...) ;

__attribute__((used)) static void
xsltParseStylesheetDecimalFormat(xsltStylesheetPtr style, xmlNodePtr cur)
{
    xmlChar *prop;
    xsltDecimalFormatPtr format;
    xsltDecimalFormatPtr iter;

    if ((cur == ((void*)0)) || (style == ((void*)0)) || (cur->type != XML_ELEMENT_NODE))
 return;

    format = style->decimalFormat;

    prop = xmlGetNsProp(cur, BAD_CAST("name"), ((void*)0));
    if (prop != ((void*)0)) {
        const xmlChar *nsUri;

        if (xmlValidateQName(prop, 0) != 0) {
            xsltTransformError(((void*)0), style, cur,
                "xsl:decimal-format: Invalid QName '%s'.\n", prop);
     style->warnings++;
            xmlFree(prop);
            return;
        }



        nsUri = xsltGetQNameURI(cur, &prop);
        if (prop == ((void*)0)) {
     style->warnings++;
            return;
        }
 format = xsltDecimalFormatGetByQName(style, nsUri, prop);
 if (format != ((void*)0)) {
     xsltTransformError(((void*)0), style, cur,
  "xsltParseStylestyleDecimalFormat: %s already exists\n", prop);
     style->warnings++;
            xmlFree(prop);
     return;
 }
 format = xsltNewDecimalFormat(nsUri, prop);
 if (format == ((void*)0)) {
     xsltTransformError(((void*)0), style, cur,
     "xsltParseStylestyleDecimalFormat: failed creating new decimal-format\n");
     style->errors++;
            xmlFree(prop);
     return;
 }

 for (iter = style->decimalFormat; iter->next; iter = iter->next)
     ;
 if (iter)
     iter->next = format;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"decimal-separator", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->decimalPoint != ((void*)0)) xmlFree(format->decimalPoint);
 format->decimalPoint = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"grouping-separator", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->grouping != ((void*)0)) xmlFree(format->grouping);
 format->grouping = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"infinity", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->infinity != ((void*)0)) xmlFree(format->infinity);
 format->infinity = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"minus-sign", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->minusSign != ((void*)0)) xmlFree(format->minusSign);
 format->minusSign = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"NaN", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->noNumber != ((void*)0)) xmlFree(format->noNumber);
 format->noNumber = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"percent", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->percent != ((void*)0)) xmlFree(format->percent);
 format->percent = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"per-mille", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->permille != ((void*)0)) xmlFree(format->permille);
 format->permille = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"zero-digit", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->zeroDigit != ((void*)0)) xmlFree(format->zeroDigit);
 format->zeroDigit = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"digit", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->digit != ((void*)0)) xmlFree(format->digit);
 format->digit = prop;
    }

    prop = xmlGetNsProp(cur, (const xmlChar *)"pattern-separator", ((void*)0));
    if (prop != ((void*)0)) {
 if (format->patternSeparator != ((void*)0)) xmlFree(format->patternSeparator);
 format->patternSeparator = prop;
    }
    if (cur->children != ((void*)0)) {
 xsltParseContentError(style, cur->children);
    }
}
