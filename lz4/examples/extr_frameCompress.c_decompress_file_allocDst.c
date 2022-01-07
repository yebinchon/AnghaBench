
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4F_frameInfo_t ;
typedef int LZ4F_dctx ;
typedef int FILE ;


 size_t LZ4F_HEADER_SIZE_MAX ;
 char* LZ4F_getErrorName (size_t const) ;
 size_t LZ4F_getFrameInfo (int *,int *,void*,size_t*) ;
 scalar_t__ LZ4F_isError (size_t const) ;
 int assert (int) ;
 int decompress_file_internal (int *,int *,int *,void*,size_t,size_t const,size_t,void* const,size_t const) ;
 scalar_t__ ferror (int *) ;
 size_t fread (void*,int,size_t,int *) ;
 int free (void* const) ;
 size_t get_block_size (int *) ;
 void* malloc (size_t const) ;
 int perror (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
decompress_file_allocDst(FILE* f_in, FILE* f_out,
                        LZ4F_dctx* dctx,
                        void* src, size_t srcCapacity)
{
    assert(f_in != ((void*)0)); assert(f_out != ((void*)0));
    assert(dctx != ((void*)0));
    assert(src != ((void*)0));
    assert(srcCapacity >= LZ4F_HEADER_SIZE_MAX);


    size_t const readSize = fread(src, 1, srcCapacity, f_in);
    if (readSize == 0 || ferror(f_in)) {
        printf("Decompress: not enough input or error reading file\n");
        return 1;
    }

    LZ4F_frameInfo_t info;
    size_t consumedSize = readSize;
    { size_t const fires = LZ4F_getFrameInfo(dctx, &info, src, &consumedSize);
        if (LZ4F_isError(fires)) {
            printf("LZ4F_getFrameInfo error: %s\n", LZ4F_getErrorName(fires));
            return 1;
    } }




    size_t const dstCapacity = get_block_size(&info);
    void* const dst = malloc(dstCapacity);
    if (!dst) { perror("decompress_file(dst)"); return 1; }

    int const decompressionResult = decompress_file_internal(
                        f_in, f_out,
                        dctx,
                        src, srcCapacity, readSize-consumedSize, consumedSize,
                        dst, dstCapacity);

    free(dst);
    return decompressionResult;
}
