
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int D; int C; int B; int A; } ;
typedef TYPE_1__ MD4_CTX ;


 int INIT_DATA_A ;
 int INIT_DATA_B ;
 int INIT_DATA_C ;
 int INIT_DATA_D ;
 int memset (TYPE_1__*,int ,int) ;

int MD4_Init(MD4_CTX *c)
{
    memset(c, 0, sizeof(*c));
    c->A = INIT_DATA_A;
    c->B = INIT_DATA_B;
    c->C = INIT_DATA_C;
    c->D = INIT_DATA_D;
    return 1;
}
