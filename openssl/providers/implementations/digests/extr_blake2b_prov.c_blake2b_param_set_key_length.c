
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int key_length; } ;
typedef TYPE_1__ BLAKE2B_PARAM ;



void blake2b_param_set_key_length(BLAKE2B_PARAM *P, uint8_t keylen)
{
    P->key_length = keylen;
}
