
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int coder; int (* get_check ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ next; } ;
typedef TYPE_2__ lzma_coder ;
typedef int lzma_check ;


 int LZMA_CHECK_NONE ;
 int stub1 (int ) ;

__attribute__((used)) static lzma_check
auto_decoder_get_check(const lzma_coder *coder)
{

 return coder->next.get_check == ((void*)0) ? LZMA_CHECK_NONE
   : coder->next.get_check(coder->next.coder);
}
