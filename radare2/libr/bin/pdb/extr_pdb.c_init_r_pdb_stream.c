
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pages; int indx; int page_size; int pages_amount; int size; int free_; int stream_file; int * buf; } ;
typedef TYPE_1__ R_PDB_STREAM ;
typedef int RBuffer ;


 int free_pdb_stream ;
 int init_r_stream_file (int *,int *,int*,int,int,int) ;

__attribute__((used)) static int init_r_pdb_stream(R_PDB_STREAM *pdb_stream, RBuffer *buf , int *pages,
        int pages_amount, int index, int size, int page_size) {
 pdb_stream->buf = buf;
 pdb_stream->pages = pages;
 pdb_stream->indx = index;
 pdb_stream->page_size = page_size;
 pdb_stream->pages_amount = pages_amount;
 if (size == -1) {
  pdb_stream->size = pages_amount * page_size;
 } else {
  pdb_stream->size = size;
 }
 init_r_stream_file (&(pdb_stream->stream_file), buf, pages, pages_amount, size, page_size);
 pdb_stream->free_ = free_pdb_stream;

 return 1;
}
