
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_2__ {int BootAddress; } ;
typedef int RBinFile ;


 TYPE_1__ n64_header ;
 int r_read_be32 (int *) ;

__attribute__((used)) static ut64 baddr(RBinFile *bf) {
 return (ut64) r_read_be32(&n64_header.BootAddress);
}
