
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_size; } ;
typedef int RCrypto ;


 TYPE_1__ state ;

__attribute__((used)) static int rc2_get_key_size(RCrypto *cry) {
 return state.key_size;
}
