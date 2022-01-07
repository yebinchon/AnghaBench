
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltParserContextPtr ;
typedef int xmlChar ;
struct TYPE_3__ {int error; } ;


 char CUR ;
 int const* CUR_PTR ;
 scalar_t__ IS_CHAR (int) ;
 int NEXT ;
 int SKIP_BLANKS ;
 int xmlStringCurrentChar (int *,int const*,int*) ;
 int * xmlStrndup (int const*,int) ;

__attribute__((used)) static xmlChar *
xsltScanLiteral(xsltParserContextPtr ctxt) {
    const xmlChar *q, *cur;
    xmlChar *ret = ((void*)0);
    int val, len;

    SKIP_BLANKS;
    if (CUR == '"') {
        NEXT;
 cur = q = CUR_PTR;
 val = xmlStringCurrentChar(((void*)0), cur, &len);
 while ((IS_CHAR(val)) && (val != '"')) {
     cur += len;
     val = xmlStringCurrentChar(((void*)0), cur, &len);
 }
 if (!IS_CHAR(val)) {
     ctxt->error = 1;
     return(((void*)0));
 } else {
     ret = xmlStrndup(q, cur - q);
        }
 cur += len;
 CUR_PTR = cur;
    } else if (CUR == '\'') {
        NEXT;
 cur = q = CUR_PTR;
 val = xmlStringCurrentChar(((void*)0), cur, &len);
 while ((IS_CHAR(val)) && (val != '\'')) {
     cur += len;
     val = xmlStringCurrentChar(((void*)0), cur, &len);
 }
 if (!IS_CHAR(val)) {
     ctxt->error = 1;
     return(((void*)0));
 } else {
     ret = xmlStrndup(q, cur - q);
        }
 cur += len;
 CUR_PTR = cur;
    } else {

 ctxt->error = 1;
 return(((void*)0));
    }
    return(ret);
}
