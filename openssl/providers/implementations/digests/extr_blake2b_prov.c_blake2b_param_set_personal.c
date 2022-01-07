
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ personal; } ;
typedef TYPE_1__ BLAKE2B_PARAM ;


 scalar_t__ BLAKE2B_PERSONALBYTES ;
 int memcpy (scalar_t__,int const*,size_t) ;
 int memset (scalar_t__,int ,scalar_t__) ;

void blake2b_param_set_personal(BLAKE2B_PARAM *P, const uint8_t *personal, size_t len)
{
    memcpy(P->personal, personal, len);
    memset(P->personal + len, 0, BLAKE2B_PERSONALBYTES - len);
}
