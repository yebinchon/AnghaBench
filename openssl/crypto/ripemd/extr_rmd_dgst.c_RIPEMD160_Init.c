
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int E; int D; int C; int B; int A; } ;
typedef TYPE_1__ RIPEMD160_CTX ;


 int RIPEMD160_A ;
 int RIPEMD160_B ;
 int RIPEMD160_C ;
 int RIPEMD160_D ;
 int RIPEMD160_E ;
 int memset (TYPE_1__*,int ,int) ;

int RIPEMD160_Init(RIPEMD160_CTX *c)
{
    memset(c, 0, sizeof(*c));
    c->A = RIPEMD160_A;
    c->B = RIPEMD160_B;
    c->C = RIPEMD160_C;
    c->D = RIPEMD160_D;
    c->E = RIPEMD160_E;
    return 1;
}
