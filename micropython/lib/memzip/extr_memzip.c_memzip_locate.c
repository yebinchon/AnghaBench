
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ compression_method; size_t uncompressed_size; int extra_len; int filename_len; } ;
typedef int MEMZIP_RESULT ;
typedef TYPE_1__ MEMZIP_FILE_HDR ;


 int MZ_FILE_COMPRESSED ;
 int MZ_NO_FILE ;
 int MZ_OK ;
 TYPE_1__* memzip_find_file_header (char const*) ;

MEMZIP_RESULT memzip_locate(const char *filename, void **data, size_t *len)
{
    const MEMZIP_FILE_HDR *file_hdr = memzip_find_file_header(filename);
    if (file_hdr == ((void*)0)) {
        return MZ_NO_FILE;
    }
    if (file_hdr->compression_method != 0) {
        return MZ_FILE_COMPRESSED;
    }

    uint8_t *mem_data;
    mem_data = (uint8_t *)&file_hdr[1];
    mem_data += file_hdr->filename_len;
    mem_data += file_hdr->extra_len;

    *data = mem_data;
    *len = file_hdr->uncompressed_size;
    return MZ_OK;
}
