
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef scalar_t__ ut16 ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ RBinFile ;


 scalar_t__ UT16_MAX ;
 scalar_t__ r_buf_read_le16_at (int ,int ) ;

__attribute__((used)) static ut64 baddr(RBinFile *bf) {
 ut16 base = r_buf_read_le16_at (bf->buf, 0);
 return base != UT16_MAX ? base : 0;
}
