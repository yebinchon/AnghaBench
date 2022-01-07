
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwInfoStatus; int dwErrorStatus; } ;
typedef TYPE_1__ CERT_TRUST_STATUS ;



__attribute__((used)) static inline void CRYPT_CombineTrustStatus(CERT_TRUST_STATUS *chainStatus,
 const CERT_TRUST_STATUS *elementStatus)
{

    chainStatus->dwErrorStatus |= elementStatus->dwErrorStatus;



    chainStatus->dwInfoStatus |= (elementStatus->dwInfoStatus & 0xfffffff0);
}
