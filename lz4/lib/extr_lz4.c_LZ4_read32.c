
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int u32; } ;
typedef TYPE_1__ unalign ;
typedef int U32 ;



__attribute__((used)) static U32 LZ4_read32(const void* ptr) { return ((const unalign*)ptr)->u32; }
