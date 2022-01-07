
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* offsets; TYPE_1__* wine_df; } ;
struct TYPE_4__ {int dwNumObjs; } ;
typedef TYPE_2__ DataFormat ;



__attribute__((used)) static int offset_to_object(const DataFormat *df, int offset)
{
    int i;

    if (!df->offsets) return -1;

    for (i = 0; i < df->wine_df->dwNumObjs; i++)
        if (df->offsets[i] == offset) return i;

    return -1;
}
