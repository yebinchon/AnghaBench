
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RBuffer ;
typedef int RBinArchOptions ;
typedef int RBin ;


 int B (char*,int) ;
 int * r_buf_new () ;

__attribute__((used)) static RBuffer *create (RBin *bin, const ut8 *code, int codelen, const ut8 *data, int datalen, RBinArchOptions *opt) {
 RBuffer *buf = r_buf_new ();


 r_buf_append_bytes (buf, (const ut8 *)("\x00" "asm"), 4);


 r_buf_append_bytes (buf, (const ut8 *)("\x01\x00\x00\x00"), 4);
 return buf;
}
