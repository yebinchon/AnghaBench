
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RBinFile ;


 int * r_bin_file_get_strings (int *,int,int ,int) ;

__attribute__((used)) static RList* strings(RBinFile* bf) {

 return r_bin_file_get_strings (bf, 20, 0, 2);
}
