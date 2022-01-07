
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* offsets; int wine_df; } ;
typedef TYPE_1__ DataFormat ;


 int id_to_object (int ,int) ;

__attribute__((used)) static int id_to_offset(const DataFormat *df, int id)
{
    int obj = id_to_object(df->wine_df, id);

    return obj >= 0 && df->offsets ? df->offsets[obj] : -1;
}
