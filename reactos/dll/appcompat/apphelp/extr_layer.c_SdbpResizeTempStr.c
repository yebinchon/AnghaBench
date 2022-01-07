
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_5__ {int MaximumLength; scalar_t__ Length; int Buffer; } ;
struct TYPE_6__ {TYPE_1__ Str; } ;
typedef TYPE_2__* PSDB_TMP_STR ;


 int SdbAlloc (int) ;
 int SdbpFreeTempStr (TYPE_2__*) ;

void SdbpResizeTempStr(PSDB_TMP_STR String, WORD newLength)
{
    if (newLength > String->Str.MaximumLength)
    {
        SdbpFreeTempStr(String);
        String->Str.MaximumLength = newLength * sizeof(WCHAR);
        String->Str.Buffer = SdbAlloc(String->Str.MaximumLength);
        String->Str.Length = 0;
    }
}
