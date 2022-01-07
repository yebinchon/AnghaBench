
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_2__ {int u32; } ;
typedef TYPE_1__ unalign ;



__attribute__((used)) static void LZ4_write32(void* memPtr, ut32 value) { ((unalign*)memPtr)->u32 = value; }
