
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uLongf ;
typedef int Bytef ;
typedef int BrotliDecoderResult ;


 int BROTLI_DECODER_RESULT_SUCCESS ;
 int BrotliDecoderDecompress (int ,scalar_t__,size_t*,unsigned char*) ;
 int MIME_COMPRESSED_LEN ;
 int MIME_ENTRIES ;
 size_t MIME_UNCOMPRESSED_LEN ;
 size_t ZSTD_decompress (unsigned char*,size_t,scalar_t__,int ) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int Z_OK ;
 int lwan_status_critical (char*,...) ;
 int lwan_status_debug (char*,int ,size_t,int) ;
 scalar_t__ mime_entries_compressed ;
 int mime_entries_initialized ;
 char** mime_types ;
 unsigned char* rawmemchr (unsigned char*,char) ;
 int uncompress (int *,size_t*,int const*,int ) ;
 unsigned char* uncompressed_mime_entries ;

void lwan_tables_init(void)
{
    if (mime_entries_initialized)
        return;

    lwan_status_debug("Uncompressing MIME type table: %u->%u bytes, %d entries",
                      MIME_COMPRESSED_LEN, MIME_UNCOMPRESSED_LEN, MIME_ENTRIES);
    uLongf uncompressed_length = MIME_UNCOMPRESSED_LEN;
    int ret =
        uncompress((Bytef *)uncompressed_mime_entries, &uncompressed_length,
                   (const Bytef *)mime_entries_compressed, MIME_COMPRESSED_LEN);
    if (ret != Z_OK) {
        lwan_status_critical("Error while uncompressing table: zlib error %d",
                             ret);
    }


    if (uncompressed_length != MIME_UNCOMPRESSED_LEN) {
        lwan_status_critical("Expected uncompressed length %d, got %ld",
                             MIME_UNCOMPRESSED_LEN, uncompressed_length);
    }

    unsigned char *ptr = uncompressed_mime_entries + 8 * MIME_ENTRIES;
    for (size_t i = 0; i < MIME_ENTRIES; i++) {
        mime_types[i] = (char *)ptr;
        ptr = rawmemchr(ptr + 1, '\0') + 1;
    }

    mime_entries_initialized = 1;
}
