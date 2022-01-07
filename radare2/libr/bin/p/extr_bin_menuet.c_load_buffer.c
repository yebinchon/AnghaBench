
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;


 int check_buffer (int *) ;

__attribute__((used)) static bool load_buffer (RBinFile *bf, void **bin_obj, RBuffer *b, ut64 loadaddr, Sdb *sdb){
 return check_buffer (b);
}
