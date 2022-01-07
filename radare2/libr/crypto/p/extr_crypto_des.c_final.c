
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int update (int *,int const*,int) ;

__attribute__((used)) static bool final (RCrypto *cry, const ut8 *buf, int len) {
 return update (cry, buf, len);
}
