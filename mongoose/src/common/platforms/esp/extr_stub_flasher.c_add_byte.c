
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct data_buf {scalar_t__ len; int * data; } ;
struct TYPE_2__ {size_t bwi; int ps; struct data_buf* bufs; } ;


 scalar_t__ BUF_SIZE ;
 TYPE_1__ ub ;

__attribute__((used)) static void add_byte(uint8_t byte) {
  struct data_buf *buf = &ub.bufs[ub.bwi];
  if (buf->len < BUF_SIZE) {
    buf->data[buf->len++] = byte;
    ub.ps++;
  }
}
