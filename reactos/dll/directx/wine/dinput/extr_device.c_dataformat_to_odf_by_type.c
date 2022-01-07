
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dwNumObjs; } ;
struct TYPE_7__ {int dwType; } ;
typedef TYPE_1__* LPDIOBJECTDATAFORMAT ;
typedef TYPE_2__* LPCDIDATAFORMAT ;
typedef int DWORD ;


 TYPE_1__* dataformat_to_odf (TYPE_2__*,int) ;

LPDIOBJECTDATAFORMAT dataformat_to_odf_by_type(LPCDIDATAFORMAT df, int n, DWORD type)
{
    int i, nfound = 0;

    for (i=0; i < df->dwNumObjs; i++)
    {
        LPDIOBJECTDATAFORMAT odf = dataformat_to_odf(df, i);

        if (odf->dwType & type)
        {
            if (n == nfound)
                return odf;

            nfound++;
        }
    }

    return ((void*)0);
}
