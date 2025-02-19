
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {float x; float y; } ;
struct TYPE_7__ {float x; float y; } ;
struct TYPE_6__ {float x; float y; } ;
struct TYPE_5__ {float x; float y; } ;
struct mp_csp_primaries {TYPE_4__ white; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;


 int mp_invert_matrix3x3 (float**) ;

void mp_get_rgb2xyz_matrix(struct mp_csp_primaries space, float m[3][3])
{
    float S[3], X[4], Z[4];


    X[0] = space.red.x / space.red.y;
    X[1] = space.green.x / space.green.y;
    X[2] = space.blue.x / space.blue.y;
    X[3] = space.white.x / space.white.y;

    Z[0] = (1 - space.red.x - space.red.y) / space.red.y;
    Z[1] = (1 - space.green.x - space.green.y) / space.green.y;
    Z[2] = (1 - space.blue.x - space.blue.y) / space.blue.y;
    Z[3] = (1 - space.white.x - space.white.y) / space.white.y;


    for (int i = 0; i < 3; i++) {
        m[0][i] = X[i];
        m[1][i] = 1;
        m[2][i] = Z[i];
    }

    mp_invert_matrix3x3(m);

    for (int i = 0; i < 3; i++)
        S[i] = m[i][0] * X[3] + m[i][1] * 1 + m[i][2] * Z[3];


    for (int i = 0; i < 3; i++) {
        m[0][i] = S[i] * X[i];
        m[1][i] = S[i] * 1;
        m[2][i] = S[i] * Z[i];
    }
}
