
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int digest_length; } ;
typedef TYPE_1__ BLAKE2S_PARAM ;



void blake2s_param_set_digest_length(BLAKE2S_PARAM *P, uint8_t outlen)
{
    P->digest_length = outlen;
}
