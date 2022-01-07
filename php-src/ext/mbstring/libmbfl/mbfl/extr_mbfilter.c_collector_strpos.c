
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* buffer; } ;
struct collector_strpos_data {scalar_t__ output; scalar_t__ start; size_t needle_pos; scalar_t__ found_pos; size_t needle_len; scalar_t__ matched_pos; TYPE_1__ needle; } ;
typedef int ssize_t ;



__attribute__((used)) static int
collector_strpos(int c, void* data)
{
 int *p, *h, *m;
 ssize_t n;
 struct collector_strpos_data *pc = (struct collector_strpos_data*)data;

 if (pc->output >= pc->start) {
  if (c == (int)pc->needle.buffer[pc->needle_pos]) {
   if (pc->needle_pos == 0) {
    pc->found_pos = pc->output;
   }
   pc->needle_pos++;
   if (pc->needle_pos >= pc->needle_len) {
    pc->matched_pos = pc->found_pos;
    pc->needle_pos--;
    goto retry;
   }
  } else if (pc->needle_pos != 0) {
retry:
   h = (int *)pc->needle.buffer;
   h++;
   for (;;) {
    pc->found_pos++;
    p = h;
    m = (int *)pc->needle.buffer;
    n = pc->needle_pos - 1;
    while (n > 0 && *p == *m) {
     n--;
     p++;
     m++;
    }
    if (n <= 0) {
     if (*m != c) {
      pc->needle_pos = 0;
     }
     break;
    } else {
     h++;
     pc->needle_pos--;
    }
   }
  }
 }

 pc->output++;
 return c;
}
