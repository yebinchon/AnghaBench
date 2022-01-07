
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pages_amount; int page_size; int pos; int end; } ;
typedef TYPE_1__ R_STREAM_FILE ;


 int GET_PAGE (int,int,int,int) ;
 scalar_t__ calloc (int,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 int stream_file_read_pages (TYPE_1__*,int,int,char*) ;

void stream_file_read(R_STREAM_FILE *stream_file, int size, char *res) {
 int pn_start, off_start, pn_end, off_end;
 if (size == -1) {
  char *pdata = (char *) malloc(stream_file->pages_amount * stream_file->page_size);
  if (pdata) {
   GET_PAGE(pn_start, off_start, stream_file->pos, stream_file->page_size);
   (void)off_end;
   stream_file_read_pages (stream_file, 0, stream_file->pages_amount, pdata);
   stream_file->pos = stream_file->end;
   memcpy (res, pdata + off_start, stream_file->end - off_start);
   free (pdata);
  }
 } else {
  GET_PAGE(pn_start, off_start, stream_file->pos, stream_file->page_size);
  GET_PAGE(pn_end, off_end, stream_file->pos + size, stream_file->page_size);
  (void)off_end;
  char *pdata = (char *) calloc(stream_file->page_size * (pn_end + 1 - pn_start), 1);
  if (pdata) {
   stream_file_read_pages(stream_file, pn_start, pn_end + 1, pdata);
   stream_file->pos += size;
   memcpy(res, pdata + off_start, size);
   free (pdata);
  }
 }
}
