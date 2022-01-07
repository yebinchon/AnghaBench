
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KECCAK1600_CTX ;


 int sha3_reset (int *) ;

__attribute__((used)) static int keccak_init(void *vctx)
{

    sha3_reset((KECCAK1600_CTX *)vctx);
    return 1;
}
