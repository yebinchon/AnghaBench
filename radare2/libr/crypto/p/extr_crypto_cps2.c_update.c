
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut16 ;
struct TYPE_4__ {int dir; } ;
typedef TYPE_1__ RCrypto ;


 int UPPER_LIMIT ;
 int * calloc (int,int) ;
 int cps2_crypt (int ,int const*,int *,int,int ,int ) ;
 int cps2key ;
 int free (int *) ;
 int r_crypto_append (TYPE_1__*,int *,int) ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 ut8 *output = calloc (1, len);

 cps2_crypt (cry->dir, (const ut16 *)buf, (ut16*)output, len, cps2key, UPPER_LIMIT);
 r_crypto_append (cry, output, len);
 free (output);
 return 1;
}
