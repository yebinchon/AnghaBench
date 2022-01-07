
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltSecurityPrefsPtr ;
typedef int xsltSecurityOption ;
typedef int * xsltSecurityCheck ;
struct TYPE_3__ {int * writeNet; int * readNet; int * createDir; int * createFile; int * readFile; } ;
xsltSecurityCheck
xsltGetSecurityPrefs(xsltSecurityPrefsPtr sec, xsltSecurityOption option) {
    if (sec == ((void*)0))
 return(((void*)0));
    switch (option) {
        case 131:
            return(sec->readFile);
        case 129:
            return(sec->createFile);
        case 132:
            return(sec->createDir);
        case 130:
            return(sec->readNet);
        case 128:
            return(sec->writeNet);
    }
    return(((void*)0));
}
