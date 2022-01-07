
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBinFile ;


 int r_bin_wasm_destroy (int *) ;

__attribute__((used)) static void destroy (RBinFile *bf) {
 r_bin_wasm_destroy (bf);
}
