#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uLongf ;
typedef  int /*<<< orphan*/  Bytef ;
typedef  int /*<<< orphan*/  BrotliDecoderResult ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_DECODER_RESULT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,size_t*,unsigned char*) ; 
 int /*<<< orphan*/  MIME_COMPRESSED_LEN ; 
 int MIME_ENTRIES ; 
 size_t MIME_UNCOMPRESSED_LEN ; 
 size_t FUNC1 (unsigned char*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ mime_entries_compressed ; 
 int mime_entries_initialized ; 
 char** mime_types ; 
 unsigned char* FUNC5 (unsigned char*,char) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 unsigned char* uncompressed_mime_entries ; 

void FUNC7(void)
{
    if (mime_entries_initialized)
        return;

    FUNC4("Uncompressing MIME type table: %u->%u bytes, %d entries",
                      MIME_COMPRESSED_LEN, MIME_UNCOMPRESSED_LEN, MIME_ENTRIES);

#if defined(HAVE_ZSTD)
    size_t uncompressed_length =
        ZSTD_decompress(uncompressed_mime_entries, MIME_UNCOMPRESSED_LEN,
                        mime_entries_compressed, MIME_COMPRESSED_LEN);
    if (ZSTD_isError(uncompressed_length))
        lwan_status_critical("Error while uncompressing table with Zstd");
#elif defined(HAVE_BROTLI)
    size_t uncompressed_length = MIME_UNCOMPRESSED_LEN;
    BrotliDecoderResult ret;

    ret = BrotliDecoderDecompress(MIME_COMPRESSED_LEN, mime_entries_compressed,
                                  &uncompressed_length,
                                  uncompressed_mime_entries);
    if (ret != BROTLI_DECODER_RESULT_SUCCESS)
        lwan_status_critical("Error while uncompressing table with Brotli");
#else
    uLongf uncompressed_length = MIME_UNCOMPRESSED_LEN;
    int ret =
        FUNC6((Bytef *)uncompressed_mime_entries, &uncompressed_length,
                   (const Bytef *)mime_entries_compressed, MIME_COMPRESSED_LEN);
    if (ret != Z_OK) {
        FUNC3("Error while uncompressing table: zlib error %d",
                             ret);
    }
#endif

    if (uncompressed_length != MIME_UNCOMPRESSED_LEN) {
        FUNC3("Expected uncompressed length %d, got %ld",
                             MIME_UNCOMPRESSED_LEN, uncompressed_length);
    }

    unsigned char *ptr = uncompressed_mime_entries + 8 * MIME_ENTRIES;
    for (size_t i = 0; i < MIME_ENTRIES; i++) {
        mime_types[i] = (char *)ptr;
        ptr = FUNC5(ptr + 1, '\0') + 1;
    }

    mime_entries_initialized = true;
}