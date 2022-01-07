
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_2__ {int u16; } ;
typedef TYPE_1__ unalign ;



__attribute__((used)) static void LZ4_write16(void* memPtr, ut16 value) { ((unalign*)memPtr)->u16 = value; }
