
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int * md5_st8; } ;
typedef TYPE_1__ md5_ctxt ;


 int memmove (int *,int *,int) ;

void
md5_result(uint8 *digest, md5_ctxt *ctxt)
{


 memmove(digest, &ctxt->md5_st8[0], 16);
}
