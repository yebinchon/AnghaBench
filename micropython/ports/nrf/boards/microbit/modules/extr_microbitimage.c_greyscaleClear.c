
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int byte_data; } ;
typedef TYPE_1__ greyscale_t ;


 int memset (int *,int ,int) ;

void greyscaleClear(greyscale_t * p_greyscale) {
    memset(&p_greyscale->byte_data, 0, (p_greyscale->width*p_greyscale->height+1)>>1);
}
