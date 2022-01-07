
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ C448_SUCCESS ;
 scalar_t__ x448_int (int *,int const*,int const*) ;

int X448(uint8_t out_shared_key[56], const uint8_t private_key[56],
         const uint8_t peer_public_value[56])
{
    return x448_int(out_shared_key, peer_public_value, private_key)
           == C448_SUCCESS;
}
