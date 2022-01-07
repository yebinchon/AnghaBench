
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ signature; int uncompressed_size; int filename_len; int extra_len; } ;
typedef TYPE_1__ MEMZIP_FILE_HDR ;


 scalar_t__ MEMZIP_FILE_HEADER_SIGNATURE ;
 scalar_t__ memzip_data ;
 int strncmp (char const*,char const*,int ) ;

const MEMZIP_FILE_HDR *memzip_find_file_header(const char *filename) {

    const MEMZIP_FILE_HDR *file_hdr = (const MEMZIP_FILE_HDR *)memzip_data;
    uint8_t *mem_data;



    if (*filename == '/') {
        filename++;
    }
    while (file_hdr->signature == MEMZIP_FILE_HEADER_SIGNATURE) {
        const char *file_hdr_filename = (const char *)&file_hdr[1];
        mem_data = (uint8_t *)file_hdr_filename;
        mem_data += file_hdr->filename_len;
        mem_data += file_hdr->extra_len;
        if (!strncmp(file_hdr_filename, filename, file_hdr->filename_len)) {

            return file_hdr;
        }
        mem_data += file_hdr->uncompressed_size;
        file_hdr = (const MEMZIP_FILE_HDR *)mem_data;
    }
    return ((void*)0);
}
