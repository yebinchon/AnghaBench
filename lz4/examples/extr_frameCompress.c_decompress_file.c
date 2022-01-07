
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4F_dctx ;
typedef int FILE ;


 int IN_CHUNK_SIZE ;
 int LZ4F_VERSION ;
 size_t LZ4F_createDecompressionContext (int **,int ) ;
 int LZ4F_freeDecompressionContext (int *) ;
 char* LZ4F_getErrorName (size_t const) ;
 scalar_t__ LZ4F_isError (size_t const) ;
 int assert (int ) ;
 int decompress_file_allocDst (int *,int *,int *,void* const,int ) ;
 int free (void* const) ;
 void* malloc (int ) ;
 int perror (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int decompress_file(FILE* f_in, FILE* f_out)
{
    assert(f_in != ((void*)0)); assert(f_out != ((void*)0));


    void* const src = malloc(IN_CHUNK_SIZE);
    if (!src) { perror("decompress_file(src)"); return 1; }

    LZ4F_dctx* dctx;
    { size_t const dctxStatus = LZ4F_createDecompressionContext(&dctx, LZ4F_VERSION);
        if (LZ4F_isError(dctxStatus)) {
            printf("LZ4F_dctx creation error: %s\n", LZ4F_getErrorName(dctxStatus));
    } }

    int const result = !dctx ? 1 :
                       decompress_file_allocDst(f_in, f_out, dctx, src, IN_CHUNK_SIZE);

    free(src);
    LZ4F_freeDecompressionContext(dctx);
    return result;
}
