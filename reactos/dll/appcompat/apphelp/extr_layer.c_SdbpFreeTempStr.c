
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Buffer; } ;
struct TYPE_5__ {scalar_t__ FixedBuffer; TYPE_1__ Str; } ;
typedef TYPE_2__* PSDB_TMP_STR ;


 int SdbFree (scalar_t__) ;

void SdbpFreeTempStr(PSDB_TMP_STR String)
{
    if (String->Str.Buffer != String->FixedBuffer)
    {
        SdbFree(String->Str.Buffer);
    }
}
