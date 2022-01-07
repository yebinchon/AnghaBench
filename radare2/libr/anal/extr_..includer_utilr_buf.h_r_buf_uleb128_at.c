
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int st64 ;
typedef int RBuffer ;


 int R_BUF_SET ;
 int r_buf_seek (int *,int ,int ) ;
 int r_buf_uleb128 (int *,int *) ;

__attribute__((used)) static inline st64 r_buf_uleb128_at(RBuffer *b, ut64 addr, ut64 *v) {
 r_buf_seek (b, addr, R_BUF_SET);
 return r_buf_uleb128 (b, v);
}
