
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int end; int* pages; int page_size; int buf; int pages_amount; int error; } ;
typedef TYPE_1__ R_STREAM_FILE ;


 int READ_PAGE_FAIL ;
 int R_BUF_SET ;
 int R_MIN (int,int ) ;
 int r_buf_read_at (int ,int,int *,int) ;
 int r_buf_seek (int ,int,int ) ;

__attribute__((used)) static void stream_file_read_pages(R_STREAM_FILE *stream_file, int start_indx, int end_indx, char *res) {
 int i, page_offset;

 if ((end_indx - start_indx) > stream_file->end) {
  stream_file->error = READ_PAGE_FAIL;
  return;
 }
 end_indx = R_MIN (end_indx, stream_file->pages_amount);

 for (i = start_indx; i < end_indx; i++) {
  page_offset = stream_file->pages[i] * stream_file->page_size;
  if (page_offset < 1) {
   return;
  }
  r_buf_seek (stream_file->buf, page_offset, R_BUF_SET);
  r_buf_read_at (stream_file->buf, page_offset,
   (ut8 *)res, stream_file->page_size);
  res += stream_file->page_size;
 }
}
