
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_2__ {int u16; } ;
typedef TYPE_1__ unalign ;



__attribute__((used)) static ut16 LZ4_read16(const void* ptr) { return ((const unalign*)ptr)->u16; }
