
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int wine_df; } ;
struct TYPE_6__ {int dwHow; int dwObj; } ;
typedef TYPE_1__* LPCDIPROPHEADER ;
typedef TYPE_2__ DataFormat ;




 int FIXME (char*,unsigned int) ;
 int id_to_object (int ,int ) ;
 int offset_to_object (TYPE_2__ const*,int ) ;

int find_property(const DataFormat *df, LPCDIPROPHEADER ph)
{
    switch (ph->dwHow)
    {
        case 129: return id_to_object(df->wine_df, ph->dwObj);
        case 128: return offset_to_object(df, ph->dwObj);
    }
    FIXME("Unhandled ph->dwHow=='%04X'\n", (unsigned int)ph->dwHow);

    return -1;
}
