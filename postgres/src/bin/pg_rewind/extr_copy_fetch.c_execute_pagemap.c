
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int datapagemap_t ;
typedef int datapagemap_iterator_t ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int * datapagemap_iterate (int *) ;
 scalar_t__ datapagemap_next (int *,int*) ;
 int pg_free (int *) ;
 int rewind_copy_file_range (char const*,int,int,int) ;

__attribute__((used)) static void
execute_pagemap(datapagemap_t *pagemap, const char *path)
{
 datapagemap_iterator_t *iter;
 BlockNumber blkno;
 off_t offset;

 iter = datapagemap_iterate(pagemap);
 while (datapagemap_next(iter, &blkno))
 {
  offset = blkno * BLCKSZ;
  rewind_copy_file_range(path, offset, offset + BLCKSZ, 0);

 }
 pg_free(iter);
}
