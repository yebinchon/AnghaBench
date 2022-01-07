
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_2__ {int arm9_ram_address; } ;
typedef int RBinFile ;


 TYPE_1__ loaded_header ;

__attribute__((used)) static ut64 baddr(RBinFile *bf) {
 return (ut64) loaded_header.arm9_ram_address;
}
