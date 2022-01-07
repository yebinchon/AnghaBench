
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t Cols; int ** Content; } ;
typedef TYPE_1__ WhoamiTable ;
typedef int WCHAR ;
typedef size_t UINT ;



void WhoamiSetTableDyn(WhoamiTable *pTable, WCHAR *Entry, UINT Row, UINT Col)
{
    pTable->Content[Row * pTable->Cols + Col] = Entry;
}
