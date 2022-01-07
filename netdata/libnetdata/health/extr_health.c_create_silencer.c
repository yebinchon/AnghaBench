
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SILENCER ;


 int D_HEALTH ;
 int * callocz (int,int) ;
 int debug (int ,char*) ;

SILENCER *create_silencer(void) {
    SILENCER *t = callocz(1, sizeof(SILENCER));
    debug(D_HEALTH, "HEALTH command API: Created empty silencer");

    return t;
}
