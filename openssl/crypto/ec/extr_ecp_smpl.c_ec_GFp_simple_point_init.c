
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Z; int * Y; int * X; scalar_t__ Z_is_one; } ;
typedef TYPE_1__ EC_POINT ;


 int BN_free (int *) ;
 void* BN_new () ;

int ec_GFp_simple_point_init(EC_POINT *point)
{
    point->X = BN_new();
    point->Y = BN_new();
    point->Z = BN_new();
    point->Z_is_one = 0;

    if (point->X == ((void*)0) || point->Y == ((void*)0) || point->Z == ((void*)0)) {
        BN_free(point->X);
        BN_free(point->Y);
        BN_free(point->Z);
        return 0;
    }
    return 1;
}
