
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int key_size; } ;
typedef int RCrypto ;


 int flag ;
 int rc2_expandKey (TYPE_1__*,int const*,int) ;
 TYPE_1__ state ;

__attribute__((used)) static bool rc2_set_key(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 flag = direction;
 state.key_size = 1024;
 return rc2_expandKey(&state, key, keylen);
}
