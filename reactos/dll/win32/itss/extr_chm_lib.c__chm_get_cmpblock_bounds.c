
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int start; } ;
struct TYPE_5__ {int block_count; int table_offset; int compressed_len; } ;
struct TYPE_4__ {int start; } ;
struct chmFile {int data_offset; TYPE_3__ cn_unit; TYPE_2__ reset_table; TYPE_1__ rt_unit; } ;
typedef int UInt64 ;
typedef int UInt32 ;
typedef int UChar ;
typedef int Int64 ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int _chm_fetch_bytes (struct chmFile*,int *,int,int) ;
 int _unmarshal_int64 (int **,int*,int *) ;
 int _unmarshal_uint64 (int **,int*,int*) ;

__attribute__((used)) static BOOL _chm_get_cmpblock_bounds(struct chmFile *h,
                                     UInt64 block,
                                     UInt64 *start,
                                     Int64 *len)
{
    UChar buffer[8], *dummy;
    UInt32 remain;


    if (block < h->reset_table.block_count-1)
    {

        dummy = buffer;
        remain = 8;
        if (_chm_fetch_bytes(h, buffer,
                             h->data_offset
                                + h->rt_unit.start
                                + h->reset_table.table_offset
                                + block*8,
                             remain) != remain ||
            !_unmarshal_uint64(&dummy, &remain, start))
            return FALSE;


        dummy = buffer;
        remain = 8;
        if (_chm_fetch_bytes(h, buffer,
                             h->data_offset
                                + h->rt_unit.start
                                + h->reset_table.table_offset
                                + block*8 + 8,
                         remain) != remain ||
            !_unmarshal_int64(&dummy, &remain, len))
            return FALSE;
    }


    else
    {

        dummy = buffer;
        remain = 8;
        if (_chm_fetch_bytes(h, buffer,
                             h->data_offset
                                + h->rt_unit.start
                                + h->reset_table.table_offset
                                + block*8,
                             remain) != remain ||
            !_unmarshal_uint64(&dummy, &remain, start))
            return FALSE;

        *len = h->reset_table.compressed_len;
    }


    *len -= *start;
    *start += h->data_offset + h->cn_unit.start;

    return TRUE;
}
