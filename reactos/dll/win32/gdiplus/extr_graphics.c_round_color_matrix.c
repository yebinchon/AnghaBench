
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double** m; } ;
typedef TYPE_1__ ColorMatrix ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int gdip_round (double) ;

__attribute__((used)) static BOOL round_color_matrix(const ColorMatrix *matrix, int values[5][5])
{

    BOOL identity = TRUE;
    int i, j;

    for (i=0; i<4; i++)
        for (j=0; j<5; j++)
        {
            if (matrix->m[j][i] != (i == j ? 1.0 : 0.0))
                identity = FALSE;
            values[j][i] = gdip_round(matrix->m[j][i] * 256.0);
        }

    return identity;
}
