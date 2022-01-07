
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;


 int HEAD ;
 int free (char*) ;

extern void lose_s(symbol * p) {
    if (p == ((void*)0)) return;
    free((char *) p - HEAD);
}
