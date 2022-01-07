
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;
typedef int RBuffer ;
typedef int RBinArchOptions ;
typedef int RBin ;


 int B (char const*,int) ;
 int D (int) ;
 int * r_buf_new () ;

__attribute__((used)) static RBuffer* create(RBin* bin, const ut8 *code, int codelen, const ut8 *data, int datalen, RBinArchOptions *opt) {
 RBuffer *buf = r_buf_new ();


 r_buf_append_bytes(buf,(const ut8*)("MENUET01"),8);
 r_buf_append_ut32(buf,1);
 r_buf_append_ut32(buf,32);
 r_buf_append_ut32(buf,0x1000);
 r_buf_append_ut32(buf,0x1000);
 r_buf_append_ut32(buf,0);
 r_buf_append_ut32(buf,0);
 r_buf_append_bytes(buf,(const ut8*)(code),codelen);
 return buf;
}
