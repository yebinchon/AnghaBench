
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; scalar_t__ accelerated; } ;


 scalar_t__ DEVCRYPTO_ACCELERATED ;
 scalar_t__ DEVCRYPTO_NOT_ACCELERATED ;
 scalar_t__ DEVCRYPTO_REJECT_SOFTWARE ;
 scalar_t__ DEVCRYPTO_STATUS_USABLE ;
 scalar_t__ DEVCRYPTO_USE_SOFTWARE ;
 TYPE_1__* cipher_driver_info ;
 int* selected_ciphers ;
 scalar_t__ use_softdrivers ;

__attribute__((used)) static int devcrypto_test_cipher(size_t cipher_data_index)
{
    return (cipher_driver_info[cipher_data_index].status == DEVCRYPTO_STATUS_USABLE
            && selected_ciphers[cipher_data_index] == 1
            && (cipher_driver_info[cipher_data_index].accelerated
                    == DEVCRYPTO_ACCELERATED
                || use_softdrivers == DEVCRYPTO_USE_SOFTWARE
                || (cipher_driver_info[cipher_data_index].accelerated
                        != DEVCRYPTO_NOT_ACCELERATED
                    && use_softdrivers == DEVCRYPTO_REJECT_SOFTWARE)));
}
