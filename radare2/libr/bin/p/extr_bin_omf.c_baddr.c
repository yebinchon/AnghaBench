
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RBinFile ;


 int OMF_BASE_ADDR ;

__attribute__((used)) static ut64 baddr(RBinFile *bf) {
 return OMF_BASE_ADDR;
}
