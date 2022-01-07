
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char ut8 ;
typedef int ut32 ;
struct TYPE_3__ {int bits; int arch; } ;
typedef int RBuffer ;
typedef TYPE_1__ RBinArchOptions ;
typedef int RBin ;


 int B (char const*,int) ;
 int D (int const) ;
 int W (int,...) ;
 int WZ (int const,char const*) ;
 int Z (int) ;
 int eprintf (char*) ;
 int free (int *) ;
 int * r_buf_new () ;
 int r_buf_size (int *) ;
 int r_return_val_if_fail (int,int *) ;
 int strlen (char const*) ;
 int strstr (int ,char*) ;

__attribute__((used)) static RBuffer *create(RBin *bin, const ut8 *code, int clen, const ut8 *data, int dlen, RBinArchOptions *opt) {
 const bool use_pagezero = 1;
 const bool use_main = 1;
 const bool use_dylinker = 1;
 const bool use_libsystem = 1;
 const bool use_linkedit = 1;
 ut32 filesize, codeva, datava;
 ut32 ncmds, cmdsize, magiclen;
 ut32 p_codefsz = 0, p_codeva = 0, p_codesz = 0, p_codepa = 0;
 ut32 p_datafsz = 0, p_datava = 0, p_datasz = 0, p_datapa = 0;
 ut32 p_cmdsize = 0, p_entry = 0, p_tmp = 0;
 ut32 baddr = 0x1000;

 r_return_val_if_fail (bin && opt, ((void*)0));

 bool is_arm = strstr (opt->arch, "arm");
 RBuffer *buf = r_buf_new ();

 if (opt->bits == 64) {
  eprintf ("TODO: Please use mach064 instead of mach0\n");
  free (buf);
  return ((void*)0);
 }
 r_buf_append_bytes(buf,(const ut8*)("\xce\xfa\xed\xfe"),4);

 if (is_arm) {
  r_buf_append_ut32(buf,12);
  r_buf_append_ut32(buf,3);
 } else {

  r_buf_append_ut32(buf,7);

  r_buf_append_ut32(buf,3);
 }
 r_buf_append_ut32(buf,2);

 if (data && dlen > 0) {
  ncmds = 3;
  cmdsize = 0;
 } else {
  ncmds = 2;
  cmdsize = 0;
 }
 if (use_pagezero) {
  ncmds++;
 }
 if (use_dylinker) {
  ncmds++;
  if (use_linkedit) {
   ncmds += 3;
  }
  if (use_libsystem) {
   ncmds++;
  }
 }


 r_buf_append_ut32(buf,ncmds);
 p_cmdsize = r_buf_size (buf);
 r_buf_append_ut32(buf,-1);
 r_buf_append_ut32(buf,0);

 magiclen = r_buf_size (buf);

 if (use_pagezero) {

  r_buf_append_ut32(buf,1);
  r_buf_append_ut32(buf,56);
  p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__PAGEZERO"),strlen("__PAGEZERO"));
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0x00001000);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
 }


 r_buf_append_ut32(buf,1);
 r_buf_append_ut32(buf,124);
 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__TEXT"),strlen("__TEXT"));
 r_buf_append_ut32(buf,baddr);
 r_buf_append_ut32(buf,0x1000);
 r_buf_append_ut32(buf,0);
 p_codefsz = r_buf_size (buf);
 r_buf_append_ut32(buf,-1);
 r_buf_append_ut32(buf,7);
 r_buf_append_ut32(buf,5);
 r_buf_append_ut32(buf,1);
 r_buf_append_ut32(buf,0);
 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__text"),strlen("__text"));
 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__TEXT"),strlen("__TEXT"));
 p_codeva = r_buf_size (buf);
 r_buf_append_ut32(buf,-1);
 p_codesz = r_buf_size (buf);
 r_buf_append_ut32(buf,-1);
 p_codepa = r_buf_size (buf);
 r_buf_append_ut32(buf,-1);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);

 if (data && dlen > 0) {

  r_buf_append_ut32(buf,1);
  r_buf_append_ut32(buf,124);
  p_tmp = r_buf_size (buf);
  r_buf_append_nbytes(buf,16);
  r_buf_write_at(buf,p_tmp,(const ut8*)("__TEXT"),6);
  r_buf_append_ut32(buf,0x2000);
  r_buf_append_ut32(buf,0x1000);
  r_buf_append_ut32(buf,0);
  p_datafsz = r_buf_size (buf);
  r_buf_append_ut32(buf,-1);
  r_buf_append_ut32(buf,6);
  r_buf_append_ut32(buf,6);
  r_buf_append_ut32(buf,1);
  r_buf_append_ut32(buf,0);

  p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__data"),strlen("__data"));
  p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__DATA"),strlen("__DATA"));

  p_datava = r_buf_size (buf);
  r_buf_append_ut32(buf,-1);
  p_datasz = r_buf_size (buf);
  r_buf_append_ut32(buf,-1);
  p_datapa = r_buf_size (buf);
  r_buf_append_ut32(buf,-1);
  r_buf_append_ut32(buf,2);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
 }

 if (use_dylinker) {
  if (use_linkedit) {

   r_buf_append_ut32(buf,1);
   r_buf_append_ut32(buf,56);
   p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__LINKEDIT"),strlen("__LINKEDIT"));
   r_buf_append_ut32(buf,0x3000);
   r_buf_append_ut32(buf,0x00001000);
   r_buf_append_ut32(buf,0x1000);
   r_buf_append_ut32(buf,0);
   r_buf_append_ut32(buf,7);
   r_buf_append_ut32(buf,1);
   r_buf_append_ut32(buf,0);
   r_buf_append_ut32(buf,0);


   r_buf_append_ut32(buf,2);
   r_buf_append_ut32(buf,24);
   r_buf_append_ut32(buf,0x1000);
   r_buf_append_ut32(buf,0);
   r_buf_append_ut32(buf,0x1000);
   r_buf_append_ut32(buf,0);


   r_buf_append_ut32(buf,0xb);
   r_buf_append_ut32(buf,80);
   r_buf_append_nbytes(buf,18 * sizeof (ut32));
  }

  const char *dyld = "/usr/lib/dyld";
  const int dyld_len = strlen (dyld) + 1;
  r_buf_append_ut32(buf,0xe);
  r_buf_append_ut32(buf,(4 * 3) + dyld_len);
  r_buf_append_ut32(buf,dyld_len - 2);
  p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,dyld_len);r_buf_write_at(buf,p_tmp,(const ut8*)(dyld),strlen(dyld));

  if (use_libsystem) {

   const char *lib = "/usr/lib/libSystem.B.dylib";
   const int lib_len = strlen (lib) + 1;
   r_buf_append_ut32(buf,0xc);
   r_buf_append_ut32(buf,24 + lib_len);
   r_buf_append_ut32(buf,24);
   r_buf_append_ut32(buf,0x2);
   r_buf_append_ut32(buf,0x1);
   r_buf_append_ut32(buf,0x1);
   p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,lib_len);r_buf_write_at(buf,p_tmp,(const ut8*)(lib),strlen(lib));
  }
 }

 if (use_main) {

  r_buf_append_ut32(buf,0x80000028);
  r_buf_append_ut32(buf,24);
  r_buf_append_ut32(buf,baddr);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
 } else {

  r_buf_append_ut32(buf,5);
  r_buf_append_ut32(buf,80);
  if (is_arm) {

   r_buf_append_ut32(buf,1);
   r_buf_append_ut32(buf,17);
   p_entry = r_buf_size (buf) + (16 * sizeof (ut32));
   r_buf_append_nbytes(buf,17 * sizeof (ut32));

  } else {

   r_buf_append_ut32(buf,1);
   r_buf_append_ut32(buf,16);
   p_entry = r_buf_size (buf) + (10 * sizeof (ut32));
   r_buf_append_nbytes(buf,16 * sizeof (ut32));
  }
 }



 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,4096 - r_buf_size (buf));r_buf_write_at(buf,p_tmp,(const ut8*)(""),strlen(""));

 cmdsize = r_buf_size (buf) - magiclen;
 codeva = r_buf_size (buf) + baddr;
 datava = r_buf_size (buf) + clen + baddr;
 if (p_entry != 0) {
  r_buf_write_at(buf,p_entry,(const ut8*)(&codeva),4);
 }


 r_buf_write_at(buf,p_cmdsize,(const ut8*)(&cmdsize),4);
 filesize = magiclen + cmdsize + clen + dlen;

 r_buf_write_at(buf,p_codefsz,(const ut8*)(&filesize),4);
 r_buf_write_at(buf,p_codefsz-8,(const ut8*)(&filesize),4);
 r_buf_write_at(buf,p_codeva,(const ut8*)(&codeva),4);

 r_buf_write_at(buf,p_codesz,(const ut8*)(&clen),4);
 p_tmp = codeva - baddr;
 r_buf_write_at(buf,p_codepa,(const ut8*)(&p_tmp),4);

 r_buf_append_bytes(buf,(const ut8*)(code),clen);

 if (data && dlen > 0) {

  r_buf_write_at(buf,p_datafsz,(const ut8*)(&filesize),4);
  r_buf_write_at(buf,p_datava,(const ut8*)(&datava),4);
  r_buf_write_at(buf,p_datasz,(const ut8*)(&dlen),4);
  p_tmp = datava - baddr;
  r_buf_write_at(buf,p_datapa,(const ut8*)(&p_tmp),4);
  r_buf_append_bytes(buf,(const ut8*)(data),dlen);
 }

 return buf;
}
