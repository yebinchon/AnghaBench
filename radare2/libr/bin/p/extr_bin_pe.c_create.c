
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;
typedef int ut32 ;
typedef int RBuffer ;
typedef int RBinArchOptions ;
typedef int RBin ;


 int B (char const*,int) ;
 int D (int) ;
 int H (int) ;
 int R_ROUND (int,int) ;
 int W (int,int*,int) ;
 int eprintf (char*) ;
 int * r_buf_new () ;
 int r_buf_size (int *) ;

__attribute__((used)) static RBuffer* create(RBin* bin, const ut8 *code, int codelen, const ut8 *data, int datalen, RBinArchOptions *opt) {
 ut32 hdrsize, p_start, p_opthdr, p_sections, p_lsrlc, n;
 ut32 baddr = 0x400000;
 RBuffer *buf = r_buf_new ();
 r_buf_append_bytes(buf,(const ut8*)("MZ\x00\x00"),4);
 r_buf_append_bytes(buf,(const ut8*)("PE\x00\x00"),4);
 r_buf_append_ut16(buf,0x14c);
 r_buf_append_ut16(buf,1);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 p_lsrlc = r_buf_size (buf);
 r_buf_append_ut16(buf,-1);
 r_buf_append_ut16(buf,0x103);


 p_opthdr = r_buf_size (buf);
 r_buf_append_ut16(buf,0x10b);
 r_buf_append_bytes(buf,(const ut8*)("\x08\x00"),2);

 p_sections = r_buf_size (buf);
 n = p_sections - p_opthdr;
 r_buf_write_at(buf,p_lsrlc,(const ut8*)(&n),2);


 p_start = 0x7c;
 hdrsize = 0x7c;

 r_buf_append_ut32(buf,R_ROUND (codelen, 4));
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,codelen);
 r_buf_append_ut32(buf,p_start);
 r_buf_append_ut32(buf,codelen);
 r_buf_append_ut32(buf,p_start);
 r_buf_append_ut32(buf,baddr);
 r_buf_append_ut32(buf,4);
 r_buf_append_ut32(buf,4);
 r_buf_append_ut16(buf,4);
 r_buf_append_ut16(buf,0);
 r_buf_append_ut16(buf,0);
 r_buf_append_ut16(buf,0);
 r_buf_append_ut16(buf,4);
 r_buf_append_ut16(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,(R_ROUND (hdrsize, 4)) + (R_ROUND (codelen, 4)));
 r_buf_append_ut32(buf,R_ROUND (hdrsize, 4));
 r_buf_append_ut32(buf,0);
 r_buf_append_ut16(buf,2);
 r_buf_append_ut16(buf,0x400);
 r_buf_append_ut32(buf,0x100000);
 r_buf_append_ut32(buf,0x1000);
 r_buf_append_ut32(buf,0x100000);
 r_buf_append_ut32(buf,0x1000);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_bytes(buf,(const ut8*)(code),codelen);

 if (data && datalen>0) {

  eprintf ("Warning: DATA section not support for PE yet\n");
  r_buf_append_bytes(buf,(const ut8*)(data),datalen);
 }
 return buf;
}
