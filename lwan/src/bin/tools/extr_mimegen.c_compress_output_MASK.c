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
typedef  int /*<<< orphan*/  uLong ;
struct output {scalar_t__ used; scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  ZopfliOptions ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_MAX_QUALITY ; 
 int /*<<< orphan*/  BROTLI_MAX_WINDOW_BITS ; 
 int /*<<< orphan*/  BROTLI_MODE_TEXT ; 
 scalar_t__ BROTLI_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned char const*,size_t*,unsigned char*) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ZOPFLI_FORMAT_ZLIB ; 
 size_t FUNC2 (char*,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,scalar_t__,unsigned char**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/  const*,scalar_t__,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static char *FUNC14(const struct output *output, size_t *outlen)
{
    char *compressed;

#if defined(HAVE_ZSTD)
    *outlen = ZSTD_compressBound(output->used);

    compressed = malloc(*outlen);
    if (!compressed) {
        fprintf(stderr, "Could not allocate memory for compressed data\n");
        exit(1);
    }

    *outlen = ZSTD_compress(compressed, *outlen, output->ptr, output->used,
                            ZSTD_maxCLevel());
    if (ZSTD_isError(*outlen)) {
        fprintf(stderr, "Could not compress mime type table with Brotli\n");
        exit(1);
    }
#elif defined(HAVE_BROTLI)
    *outlen = BrotliEncoderMaxCompressedSize(output->used);

    compressed = malloc(*outlen);
    if (!compressed) {
        fprintf(stderr, "Could not allocate memory for compressed data\n");
        exit(1);
    }

    if (BrotliEncoderCompress(BROTLI_MAX_QUALITY, BROTLI_MAX_WINDOW_BITS,
                              BROTLI_MODE_TEXT, output->used,
                              (const unsigned char *)output->ptr, outlen,
                              (unsigned char *)compressed) != BROTLI_TRUE) {
        fprintf(stderr, "Could not compress mime type table with Brotli\n");
        exit(1);
    }
#elif defined(HAVE_ZOPFLI)
    ZopfliOptions opts;

    *outlen = 0;

    ZopfliInitOptions(&opts);
    ZopfliCompress(&opts, ZOPFLI_FORMAT_ZLIB,
                   (const unsigned char *)output->ptr, output->used,
                   (unsigned char **)&compressed, outlen);
#else
    *outlen = FUNC9((uLong)output->used);
    compressed = FUNC13(*outlen);
    if (!compressed) {
        FUNC11(stderr, "Could not allocate memory for compressed data\n");
        FUNC10(1);
    }
    if (FUNC8((Bytef *)compressed, outlen, (const Bytef *)output->ptr,
                  output->used, 9) != Z_OK) {
        FUNC11(stderr, "Could not compress data with zlib\n");
        FUNC10(1);
    }
#endif
    if (!*outlen) {
        FUNC12(compressed);
        return NULL;
    }

    return compressed;
}