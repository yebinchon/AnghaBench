
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int RBuffer ;
typedef int RBinArchOptions ;
typedef int RBin ;


 int B (char const*,int) ;
 int D (int const) ;
 int Q (int) ;
 int STATESIZE ;
 int W (int,...) ;
 int WZ (int const,char const*) ;
 int Z (int) ;
 int * r_buf_new () ;
 int r_buf_size (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static RBuffer* create(RBin* bin, const ut8 *code, int codelen, const ut8 *data, int datalen, RBinArchOptions *opt) {
 const bool use_pagezero = 1;
 const bool use_main = 1;
 const bool use_dylinker = 1;
 const bool use_libsystem = 1;
 const bool use_linkedit = 1;
 ut64 filesize, codeva, datava;
 ut32 ncmds, magiclen, headerlen;
 ut64 p_codefsz=0, p_codeva=0, p_codesz=0, p_codepa=0;
 ut64 p_datafsz=0, p_datava=0, p_datasz=0, p_datapa=0;
 ut64 p_cmdsize=0, p_entry=0, p_tmp=0;
 ut64 baddr = 0x100001000LL;

 RBuffer *buf = r_buf_new ();
 r_buf_append_bytes(buf,(const ut8*)("\xcf\xfa\xed\xfe"),4);
 r_buf_append_ut32(buf,7 | 0x01000000);

 r_buf_append_ut32(buf,0x80000003);
 r_buf_append_ut32(buf,2);

 ncmds = (data && datalen>0)? 3: 2;
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
 r_buf_append_ut32(buf,0);

 magiclen = r_buf_size (buf);

 if (use_pagezero) {

  r_buf_append_ut32(buf,0x19);
  r_buf_append_ut32(buf,72);
  p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__PAGEZERO"),strlen("__PAGEZERO"));
  r_buf_append_ut64(buf,0);
  r_buf_append_ut64(buf,0x1000);
  r_buf_append_ut64(buf,0);
  r_buf_append_ut64(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
 }


 r_buf_append_ut32(buf,0x19);

 r_buf_append_ut32(buf,124+28);
 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__TEXT"),strlen("__TEXT"));
 r_buf_append_ut64(buf,baddr);
 r_buf_append_ut64(buf,0x1000);

 r_buf_append_ut64(buf,0);
 p_codefsz = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 r_buf_append_ut32(buf,7);
 r_buf_append_ut32(buf,5);
 r_buf_append_ut32(buf,1);
 r_buf_append_ut32(buf,0);

 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__text"),strlen("__text"));
 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__TEXT"),strlen("__TEXT"));
 p_codeva = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 p_codesz = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 p_codepa = r_buf_size (buf);
 r_buf_append_ut32(buf,-1);
 r_buf_append_ut32(buf,2);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);

 if (data && datalen > 0) {

  r_buf_append_ut32(buf,0x19);
  r_buf_append_ut32(buf,124+28);
  p_tmp = r_buf_size (buf);
  r_buf_append_nbytes(buf,16);
  r_buf_write_at(buf,p_tmp,(const ut8*)("__TEXT"),6);

  r_buf_append_ut64(buf,0x2000);

  r_buf_append_ut64(buf,0x1000);
  r_buf_append_ut64(buf,0);
  p_datafsz = r_buf_size (buf);
  r_buf_append_ut64(buf,-1);
  r_buf_append_ut32(buf,6);
  r_buf_append_ut32(buf,6);
  r_buf_append_ut32(buf,1);
  r_buf_append_ut32(buf,0);

  p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__data"),strlen("__data"));
  p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__DATA"),strlen("__DATA"));

  p_datava = r_buf_size (buf);
  r_buf_append_ut64(buf,-1);
  p_datasz = r_buf_size (buf);
  r_buf_append_ut64(buf,-1);
  p_datapa = r_buf_size (buf);
  r_buf_append_ut32(buf,-1);
  r_buf_append_ut32(buf,2);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
  r_buf_append_ut32(buf,0);
 }

 if (use_dylinker) {
  if (use_linkedit) {

   r_buf_append_ut32(buf,0x19);
   r_buf_append_ut32(buf,72);
   p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,16);r_buf_write_at(buf,p_tmp,(const ut8*)("__LINKEDIT"),strlen("__LINKEDIT"));
   r_buf_append_ut64(buf,0x3000);
   r_buf_append_ut64(buf,0x00001000);
   r_buf_append_ut64(buf,0x1000);
   r_buf_append_ut64(buf,0);
   r_buf_append_ut32(buf,7);
   r_buf_append_ut32(buf,3);
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
  r_buf_append_ut32(buf,184);
  r_buf_append_ut32(buf,4);
  r_buf_append_ut32(buf,42);
  p_entry = r_buf_size (buf) + (16*sizeof (ut64));
  r_buf_append_nbytes(buf,(21*sizeof (ut64)));
 }

 p_tmp=r_buf_size (buf);r_buf_append_nbytes(buf,4096 - r_buf_size (buf));r_buf_write_at(buf,p_tmp,(const ut8*)(""),strlen(""));
 headerlen = r_buf_size (buf) - magiclen;

 codeva = r_buf_size (buf) + baddr;
 datava = r_buf_size (buf) + codelen + baddr;

 if (p_entry != 0) {
  r_buf_write_at(buf,p_entry,(const ut8*)(&codeva),8);
 }


 r_buf_write_at(buf,p_cmdsize,(const ut8*)(&headerlen),4);
 filesize = magiclen + headerlen + codelen + datalen;

 r_buf_write_at(buf,p_codefsz,(const ut8*)(&filesize),8);
 r_buf_write_at(buf,p_codefsz-16,(const ut8*)(&filesize),8);
 r_buf_write_at(buf,p_codeva,(const ut8*)(&codeva),8);
 {
  ut64 clen = codelen;
  r_buf_write_at(buf,p_codesz,(const ut8*)(&clen),8);
 }
 p_tmp = codeva - baddr;
 r_buf_write_at(buf,p_codepa,(const ut8*)(&p_tmp),8);

 r_buf_append_bytes(buf,(const ut8*)(code),codelen);

 if (data && datalen>0) {

  r_buf_write_at(buf,p_datafsz,(const ut8*)(&filesize),8);
  r_buf_write_at(buf,p_datava,(const ut8*)(&datava),8);
  r_buf_write_at(buf,p_datasz,(const ut8*)(&datalen),8);
  p_tmp = datava - baddr;
  r_buf_write_at(buf,p_datapa,(const ut8*)(&p_tmp),8);
  r_buf_append_bytes(buf,(const ut8*)(data),datalen);
 }

 return buf;
}
