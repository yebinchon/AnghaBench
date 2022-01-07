
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4F_dctx ;
typedef int FILE ;


 size_t LZ4F_decompress (int *,void*,size_t*,void const*,size_t*,int *) ;
 char* LZ4F_getErrorName (size_t) ;
 scalar_t__ LZ4F_isError (size_t) ;
 int assert (int) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 size_t fread (void*,int,int,int *) ;
 int printf (char*,...) ;
 int safe_fwrite (void*,int,size_t,int *) ;

__attribute__((used)) static int
decompress_file_internal(FILE* f_in, FILE* f_out,
                         LZ4F_dctx* dctx,
                         void* src, size_t srcCapacity, size_t filled, size_t alreadyConsumed,
                         void* dst, size_t dstCapacity)
{
    int firstChunk = 1;
    size_t ret = 1;

    assert(f_in != ((void*)0)); assert(f_out != ((void*)0));
    assert(dctx != ((void*)0));
    assert(src != ((void*)0)); assert(srcCapacity > 0); assert(filled <= srcCapacity); assert(alreadyConsumed <= filled);
    assert(dst != ((void*)0)); assert(dstCapacity > 0);


    while (ret != 0) {

        size_t readSize = firstChunk ? filled : fread(src, 1, srcCapacity, f_in); firstChunk=0;
        const void* srcPtr = (const char*)src + alreadyConsumed; alreadyConsumed=0;
        const void* const srcEnd = (const char*)srcPtr + readSize;
        if (readSize == 0 || ferror(f_in)) {
            printf("Decompress: not enough input or error reading file\n");
            return 1;
        }





        while (srcPtr < srcEnd && ret != 0) {

            size_t dstSize = dstCapacity;
            size_t srcSize = (const char*)srcEnd - (const char*)srcPtr;
            ret = LZ4F_decompress(dctx, dst, &dstSize, srcPtr, &srcSize, ((void*)0));
            if (LZ4F_isError(ret)) {
                printf("Decompression error: %s\n", LZ4F_getErrorName(ret));
                return 1;
            }

            if (dstSize != 0) safe_fwrite(dst, 1, dstSize, f_out);

            srcPtr = (const char*)srcPtr + srcSize;
        }

        assert(srcPtr <= srcEnd);





        if (srcPtr < srcEnd) {
            printf("Decompress: Trailing data left in file after frame\n");
            return 1;
        }
    }





    { size_t const readSize = fread(src, 1, 1, f_in);
        if (readSize != 0 || !feof(f_in)) {
            printf("Decompress: Trailing data left in file after frame\n");
            return 1;
    } }

    return 0;
}
