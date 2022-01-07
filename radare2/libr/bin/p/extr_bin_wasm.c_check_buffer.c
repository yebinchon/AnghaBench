
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RBuffer ;


 int R_BIN_WASM_MAGIC_BYTES ;
 int memcmp (int *,int ,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool check_buffer (RBuffer *rbuf) {
 ut8 buf[4] = { 0 };
 return rbuf && r_buf_read_at (rbuf, 0, buf, 4) == 4 && !memcmp (buf, R_BIN_WASM_MAGIC_BYTES, 4);
}
