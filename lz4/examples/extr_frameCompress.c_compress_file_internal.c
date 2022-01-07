
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; unsigned long long size_in; unsigned long long size_out; scalar_t__ error; int member_2; int member_1; } ;
typedef TYPE_1__ compressResult_t ;
typedef int * LZ4F_compressionContext_t ;
typedef int FILE ;


 int IN_CHUNK_SIZE ;
 size_t LZ4F_HEADER_SIZE_MAX ;
 size_t LZ4F_compressBegin (int *,void*,size_t,int *) ;
 size_t LZ4F_compressBound (size_t,int *) ;
 size_t LZ4F_compressEnd (int *,void*,size_t,int *) ;
 size_t LZ4F_compressUpdate (int *,void*,size_t,void*,size_t const,int *) ;
 scalar_t__ LZ4F_isError (size_t const) ;
 int assert (int) ;
 size_t fread (void*,int,int ,int *) ;
 int kPrefs ;
 int printf (char*,unsigned int,...) ;
 int safe_fwrite (void*,int,size_t const,int *) ;

__attribute__((used)) static compressResult_t
compress_file_internal(FILE* f_in, FILE* f_out,
                       LZ4F_compressionContext_t ctx,
                       void* inBuff, size_t inChunkSize,
                       void* outBuff, size_t outCapacity)
{
    compressResult_t result = { 1, 0, 0 };
    unsigned long long count_in = 0, count_out;

    assert(f_in != ((void*)0)); assert(f_out != ((void*)0));
    assert(ctx != ((void*)0));
    assert(outCapacity >= LZ4F_HEADER_SIZE_MAX);
    assert(outCapacity >= LZ4F_compressBound(inChunkSize, &kPrefs));


    { size_t const headerSize = LZ4F_compressBegin(ctx, outBuff, outCapacity, &kPrefs);
        if (LZ4F_isError(headerSize)) {
            printf("Failed to start compression: error %u \n", (unsigned)headerSize);
            return result;
        }
        count_out = headerSize;
        printf("Buffer size is %u bytes, header size %u bytes \n",
                (unsigned)outCapacity, (unsigned)headerSize);
        safe_fwrite(outBuff, 1, headerSize, f_out);
    }


    for (;;) {
        size_t const readSize = fread(inBuff, 1, IN_CHUNK_SIZE, f_in);
        if (readSize == 0) break;
        count_in += readSize;

        size_t const compressedSize = LZ4F_compressUpdate(ctx,
                                                outBuff, outCapacity,
                                                inBuff, readSize,
                                                ((void*)0));
        if (LZ4F_isError(compressedSize)) {
            printf("Compression failed: error %u \n", (unsigned)compressedSize);
            return result;
        }

        printf("Writing %u bytes\n", (unsigned)compressedSize);
        safe_fwrite(outBuff, 1, compressedSize, f_out);
        count_out += compressedSize;
    }


    { size_t const compressedSize = LZ4F_compressEnd(ctx,
                                                outBuff, outCapacity,
                                                ((void*)0));
        if (LZ4F_isError(compressedSize)) {
            printf("Failed to end compression: error %u \n", (unsigned)compressedSize);
            return result;
        }

        printf("Writing %u bytes \n", (unsigned)compressedSize);
        safe_fwrite(outBuff, 1, compressedSize, f_out);
        count_out += compressedSize;
    }

    result.size_in = count_in;
    result.size_out = count_out;
    result.error = 0;
    return result;
}
