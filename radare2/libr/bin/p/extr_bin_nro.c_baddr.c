
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ RBinFile ;


 int NRO_OFFSET_MODMEMOFF ;
 int readLE32 (int ,int ) ;

__attribute__((used)) static ut64 baddr(RBinFile *bf) {
 return bf? readLE32 (bf->buf, NRO_OFFSET_MODMEMOFF): 0;
}
