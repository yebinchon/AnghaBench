
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ RBinFile ;


 int r_buf_size (int ) ;

__attribute__((used)) static ut64 size (RBinFile *bf) {
 if (!bf || !bf->buf) {
  return 0;
 }
 return r_buf_size (bf->buf);
}
