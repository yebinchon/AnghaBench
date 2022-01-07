
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLong ;
struct output {scalar_t__ used; scalar_t__ ptr; } ;
typedef int ZopfliOptions ;
typedef int Bytef ;


 int BROTLI_MAX_QUALITY ;
 int BROTLI_MAX_WINDOW_BITS ;
 int BROTLI_MODE_TEXT ;
 scalar_t__ BROTLI_TRUE ;
 scalar_t__ BrotliEncoderCompress (int ,int ,int ,scalar_t__,unsigned char const*,size_t*,unsigned char*) ;
 size_t BrotliEncoderMaxCompressedSize (scalar_t__) ;
 int ZOPFLI_FORMAT_ZLIB ;
 size_t ZSTD_compress (char*,size_t,scalar_t__,scalar_t__,int ) ;
 size_t ZSTD_compressBound (scalar_t__) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int ZSTD_maxCLevel () ;
 scalar_t__ Z_OK ;
 int ZopfliCompress (int *,int ,unsigned char const*,scalar_t__,unsigned char**,size_t*) ;
 int ZopfliInitOptions (int *) ;
 scalar_t__ compress2 (int *,size_t*,int const*,scalar_t__,int) ;
 size_t compressBound (int ) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int stderr ;

__attribute__((used)) static char *compress_output(const struct output *output, size_t *outlen)
{
    char *compressed;
    *outlen = compressBound((uLong)output->used);
    compressed = malloc(*outlen);
    if (!compressed) {
        fprintf(stderr, "Could not allocate memory for compressed data\n");
        exit(1);
    }
    if (compress2((Bytef *)compressed, outlen, (const Bytef *)output->ptr,
                  output->used, 9) != Z_OK) {
        fprintf(stderr, "Could not compress data with zlib\n");
        exit(1);
    }

    if (!*outlen) {
        free(compressed);
        return ((void*)0);
    }

    return compressed;
}
