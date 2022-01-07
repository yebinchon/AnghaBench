
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int dstBuffer; int srcBuffer; } ;
typedef TYPE_1__ cRess_t ;


 int LZ4F_freeDecompressionContext (int ) ;
 int free (int ) ;

__attribute__((used)) static void freeCResources(cRess_t ress)
{
    free(ress.srcBuffer);
    free(ress.dstBuffer);

    (void) LZ4F_freeDecompressionContext(ress.ctx);
}
