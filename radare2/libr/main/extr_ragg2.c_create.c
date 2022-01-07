
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int RBuffer ;
typedef int RBinArchOptions ;
typedef int RBin ;


 int eprintf (char*,...) ;
 int r_bin_arch_options_init (int *,char const*,int) ;
 int * r_bin_create (int *,char const*,int const*,int,int *,int ,int *) ;
 int r_bin_free (int *) ;
 int * r_bin_new () ;
 int * r_buf_data (int *,scalar_t__*) ;
 int r_buf_free (int *) ;
 scalar_t__ write (int,int const*,scalar_t__) ;

__attribute__((used)) static int create(const char *format, const char *arch, int bits, const ut8 *code, int codelen) {
 RBin *bin = r_bin_new ();
 RBinArchOptions opts;
 RBuffer *b;
 r_bin_arch_options_init (&opts, arch, bits);
 b = r_bin_create (bin, format, code, codelen, ((void*)0), 0, &opts);
 if (b) {
  ut64 blen;
  const ut8 *tmp = r_buf_data (b, &blen);
  if (write (1, tmp, blen) != blen) {
   eprintf ("Failed to write buffer\n");
  }
  r_buf_free (b);
 } else {
  eprintf ("Cannot create binary for this format '%s'.\n", format);
 }
 r_bin_free (bin);
 return 0;
}
