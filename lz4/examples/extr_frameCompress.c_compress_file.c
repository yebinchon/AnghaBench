
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_2; int member_1; } ;
typedef TYPE_1__ compressResult_t ;
typedef int LZ4F_compressionContext_t ;
typedef int FILE ;


 size_t const IN_CHUNK_SIZE ;
 int LZ4F_VERSION ;
 size_t LZ4F_compressBound (size_t const,int *) ;
 size_t LZ4F_createCompressionContext (int *,int ) ;
 int LZ4F_freeCompressionContext (int ) ;
 int LZ4F_isError (size_t const) ;
 int assert (int ) ;
 TYPE_1__ compress_file_internal (int *,int *,int ,void* const,size_t const,void* const,size_t const) ;
 int free (void* const) ;
 int kPrefs ;
 void* malloc (size_t const) ;
 int printf (char*) ;

__attribute__((used)) static compressResult_t
compress_file(FILE* f_in, FILE* f_out)
{
    assert(f_in != ((void*)0));
    assert(f_out != ((void*)0));


    LZ4F_compressionContext_t ctx;
    size_t const ctxCreation = LZ4F_createCompressionContext(&ctx, LZ4F_VERSION);
    void* const src = malloc(IN_CHUNK_SIZE);
    size_t const outbufCapacity = LZ4F_compressBound(IN_CHUNK_SIZE, &kPrefs);
    void* const outbuff = malloc(outbufCapacity);

    compressResult_t result = { 1, 0, 0 };
    if (!LZ4F_isError(ctxCreation) && src && outbuff) {
        result = compress_file_internal(f_in, f_out,
                                        ctx,
                                        src, IN_CHUNK_SIZE,
                                        outbuff, outbufCapacity);
    } else {
        printf("error : ressource allocation failed \n");
    }

    LZ4F_freeCompressionContext(ctx);
    free(src);
    free(outbuff);
    return result;
}
