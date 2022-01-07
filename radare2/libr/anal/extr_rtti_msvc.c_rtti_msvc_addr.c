
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef scalar_t__ ut32 ;
struct TYPE_3__ {int word_size; } ;
typedef TYPE_1__ RVTableContext ;



__attribute__((used)) static inline ut64 rtti_msvc_addr(RVTableContext *context, ut64 col_addr, ut64 col_base, ut32 addr) {
 if (context->word_size != 8) {
  return addr;
 }
 return addr + (col_addr - col_base);
}
