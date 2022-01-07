
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwType; } ;
struct TYPE_5__ {int dwNumObjs; } ;
typedef TYPE_1__* LPCDIDATAFORMAT ;


 TYPE_3__* dataformat_to_odf (TYPE_1__*,int) ;

int id_to_object(LPCDIDATAFORMAT df, int id)
{
    int i;

    id &= 0x00ffffff;
    for (i = 0; i < df->dwNumObjs; i++)
        if ((dataformat_to_odf(df, i)->dwType & 0x00ffffff) == id)
            return i;

    return -1;
}
