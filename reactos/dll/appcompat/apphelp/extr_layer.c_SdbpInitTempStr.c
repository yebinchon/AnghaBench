
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MaximumLength; scalar_t__ Length; int Buffer; } ;
struct TYPE_5__ {TYPE_1__ Str; int FixedBuffer; } ;
typedef TYPE_2__* PSDB_TMP_STR ;



void SdbpInitTempStr(PSDB_TMP_STR String)
{
    String->Str.Buffer = String->FixedBuffer;
    String->Str.Length = 0;
    String->Str.MaximumLength = sizeof(String->FixedBuffer);
}
