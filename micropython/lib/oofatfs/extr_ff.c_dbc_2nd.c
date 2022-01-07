
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BYTE ;


 scalar_t__* DbcTbl ;

__attribute__((used)) static int dbc_2nd (BYTE c)
{

    if (DbcTbl && c >= DbcTbl[4]) {
        if (c <= DbcTbl[5]) return 1;
        if (c >= DbcTbl[6] && c <= DbcTbl[7]) return 1;
        if (c >= DbcTbl[8] && c <= DbcTbl[9]) return 1;
    }
    return 0;
}
