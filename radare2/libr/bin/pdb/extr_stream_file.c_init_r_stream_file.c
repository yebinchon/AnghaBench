
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pages; int pages_amount; int page_size; int end; scalar_t__ pos; int * buf; scalar_t__ error; } ;
typedef TYPE_1__ R_STREAM_FILE ;
typedef int RBuffer ;



int init_r_stream_file(R_STREAM_FILE *stream_file, RBuffer *buf, int *pages, int pages_amount, int size, int page_size) {
 stream_file->error = 0;
 stream_file->buf = buf;
 stream_file->pages = pages;
 stream_file->pages_amount = pages_amount;
 stream_file->page_size = page_size;
 if (size == -1) {
  stream_file->end = pages_amount * page_size;
 } else {
  stream_file->end = size;
 }
 stream_file->pos = 0;
 return 1;
}
