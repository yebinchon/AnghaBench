
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int R_SHA512_CTX ;
typedef int R_SHA384_CTX ;


 int SHA512_Update (int *,int const*,size_t) ;

void SHA384_Update(R_SHA384_CTX *context, const ut8 *data, size_t len) {
 SHA512_Update ((R_SHA512_CTX *) context, data, len);
}
