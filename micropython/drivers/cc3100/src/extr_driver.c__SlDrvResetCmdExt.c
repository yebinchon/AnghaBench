
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _SlCmdExt_t ;


 int _SlDrvMemZero (int *,int) ;

void _SlDrvResetCmdExt(_SlCmdExt_t* pCmdExt)
{
    _SlDrvMemZero(pCmdExt, sizeof (_SlCmdExt_t));
}
