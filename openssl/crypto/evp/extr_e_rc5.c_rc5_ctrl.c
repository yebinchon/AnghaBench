
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rounds; } ;
typedef int EVP_CIPHER_CTX ;





 int EVP_F_RC5_CTRL ;
 int EVP_R_UNSUPPORTED_NUMBER_OF_ROUNDS ;
 int EVPerr (int ,int ) ;



 TYPE_1__* data (int *) ;

__attribute__((used)) static int rc5_ctrl(EVP_CIPHER_CTX *c, int type, int arg, void *ptr)
{
    switch (type) {
    case 132:
        data(c)->rounds = 130;
        return 1;

    case 133:
        *(int *)ptr = data(c)->rounds;
        return 1;

    case 131:
        switch (arg) {
        case 128:
        case 130:
        case 129:
            data(c)->rounds = arg;
            return 1;

        default:
            EVPerr(EVP_F_RC5_CTRL, EVP_R_UNSUPPORTED_NUMBER_OF_ROUNDS);
            return 0;
        }

    default:
        return -1;
    }
}
