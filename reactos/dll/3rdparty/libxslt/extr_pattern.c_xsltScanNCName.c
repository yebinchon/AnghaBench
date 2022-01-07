
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltParserContextPtr ;
typedef int xmlChar ;


 int const* CUR_PTR ;
 scalar_t__ IS_COMBINING (int) ;
 scalar_t__ IS_DIGIT (int) ;
 scalar_t__ IS_EXTENDER (int) ;
 scalar_t__ IS_LETTER (int) ;
 int SKIP_BLANKS ;
 int xmlStringCurrentChar (int *,int const*,int*) ;
 int * xmlStrndup (int const*,int) ;

__attribute__((used)) static xmlChar *
xsltScanNCName(xsltParserContextPtr ctxt) {
    const xmlChar *q, *cur;
    xmlChar *ret = ((void*)0);
    int val, len;

    SKIP_BLANKS;

    cur = q = CUR_PTR;
    val = xmlStringCurrentChar(((void*)0), cur, &len);
    if (!IS_LETTER(val) && (val != '_'))
 return(((void*)0));

    while ((IS_LETTER(val)) || (IS_DIGIT(val)) ||
           (val == '.') || (val == '-') ||
    (val == '_') ||
    (IS_COMBINING(val)) ||
    (IS_EXTENDER(val))) {
 cur += len;
 val = xmlStringCurrentChar(((void*)0), cur, &len);
    }
    ret = xmlStrndup(q, cur - q);
    CUR_PTR = cur;
    return(ret);
}
