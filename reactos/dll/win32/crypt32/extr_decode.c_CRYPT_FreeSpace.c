
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* pfnFree ) (int ) ;} ;
typedef int LPVOID ;
typedef TYPE_1__ CRYPT_DECODE_PARA ;


 int LocalFree (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void CRYPT_FreeSpace(const CRYPT_DECODE_PARA *pDecodePara, LPVOID pv)
{
    if (pDecodePara && pDecodePara->pfnFree)
        pDecodePara->pfnFree(pv);
    else
        LocalFree(pv);
}
