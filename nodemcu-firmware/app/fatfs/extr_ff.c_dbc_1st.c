
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BYTE ;


 scalar_t__* DbcTbl ;

__attribute__((used)) static int dbc_1st (BYTE c)
{

 if (DbcTbl && c >= DbcTbl[0]) {
  if (c <= DbcTbl[1]) return 1;
  if (c >= DbcTbl[2] && c <= DbcTbl[3]) return 1;
 }
 return 0;
}
