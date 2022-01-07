
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltSecurityPrefsPtr ;
typedef int xsltSecurityOption ;
typedef void* xsltSecurityCheck ;
struct TYPE_3__ {void* writeNet; void* readNet; void* createDir; void* createFile; void* readFile; } ;







 int xsltInitGlobals () ;

int
xsltSetSecurityPrefs(xsltSecurityPrefsPtr sec, xsltSecurityOption option,
                     xsltSecurityCheck func) {
    xsltInitGlobals();
    if (sec == ((void*)0))
 return(-1);
    switch (option) {
        case 131:
            sec->readFile = func; return(0);
        case 129:
            sec->createFile = func; return(0);
        case 132:
            sec->createDir = func; return(0);
        case 130:
            sec->readNet = func; return(0);
        case 128:
            sec->writeNet = func; return(0);
    }
    return(-1);
}
