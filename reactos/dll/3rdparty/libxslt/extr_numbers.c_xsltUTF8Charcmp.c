
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int xmlStrncmp (int *,int *,int) ;
 int xmlUTF8Strsize (int *,int) ;

__attribute__((used)) static int
xsltUTF8Charcmp(xmlChar *utf1, xmlChar *utf2) {
    int len = xmlUTF8Strsize(utf1, 1);

    if (len < 1)
        return -1;
    if (utf1 == ((void*)0) ) {
        if (utf2 == ((void*)0))
            return 0;
        return -1;
    }
    return xmlStrncmp(utf1, utf2, len);
}
