
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int initialized ;
 int xmlNewRMutex () ;
 int xsltLocaleMutex ;
 int xsltRegisterAllExtras () ;

void
xsltInit (void) {
    if (initialized == 0) {
 initialized = 1;



        xsltRegisterAllExtras();
    }
}
