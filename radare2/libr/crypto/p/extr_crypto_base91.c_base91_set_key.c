
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int dir; } ;
typedef TYPE_1__ RCrypto ;



__attribute__((used)) static bool base91_set_key(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 cry->dir = direction;
 return 1;
}
