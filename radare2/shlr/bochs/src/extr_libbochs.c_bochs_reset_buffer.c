
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ punteroBuffer; int data; } ;
typedef TYPE_1__ libbochs_t ;


 int SIZE_BUF ;
 int memset (int ,int ,int ) ;

void bochs_reset_buffer(libbochs_t* b) {
 memset (b->data, 0, SIZE_BUF);
 b->punteroBuffer = 0;
}
