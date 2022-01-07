
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int datapagemap_t ;
typedef int datapagemap_iterator_t ;
typedef int BlockNumber ;


 int * datapagemap_iterate (int *) ;
 scalar_t__ datapagemap_next (int *,int *) ;
 int pg_free (int *) ;
 int pg_log_debug (char*,int ) ;

void
datapagemap_print(datapagemap_t *map)
{
 datapagemap_iterator_t *iter;
 BlockNumber blocknum;

 iter = datapagemap_iterate(map);
 while (datapagemap_next(iter, &blocknum))
  pg_log_debug("block %u", blocknum);

 pg_free(iter);
}
