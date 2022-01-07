
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {scalar_t__ length; scalar_t__ space; scalar_t__ start; } ;
struct chmFile {scalar_t__ data_offset; int compression_enabled; } ;
typedef scalar_t__ LONGUINT64 ;
typedef scalar_t__ LONGINT64 ;
typedef scalar_t__ Int64 ;


 scalar_t__ CHM_UNCOMPRESSED ;
 scalar_t__ _chm_decompress_region (struct chmFile*,unsigned char*,scalar_t__,scalar_t__) ;
 scalar_t__ _chm_fetch_bytes (struct chmFile*,unsigned char*,scalar_t__,scalar_t__) ;

LONGINT64 chm_retrieve_object(struct chmFile *h,
                               struct chmUnitInfo *ui,
                               unsigned char *buf,
                               LONGUINT64 addr,
                               LONGINT64 len)
{

    if (h == ((void*)0))
        return 0;


    if (addr >= ui->length)
        return 0;


    if (addr + len > ui->length)
        len = ui->length - addr;


    if (ui->space == CHM_UNCOMPRESSED)
    {

        return _chm_fetch_bytes(h,
                                buf,
                                h->data_offset + ui->start + addr,
                                len);
    }


    else
    {
        Int64 swath=0, total=0;


        if (! h->compression_enabled)
            return total;

        do {


            swath = _chm_decompress_region(h, buf, ui->start + addr, len);


            if (swath == 0)
                return total;


            total += swath;
            len -= swath;
            addr += swath;
            buf += swath;

        } while (len != 0);

        return total;
    }
}
