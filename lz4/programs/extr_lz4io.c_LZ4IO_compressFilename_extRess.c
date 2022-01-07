
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int stat_t ;
typedef int prefs ;
struct TYPE_12__ {void* srcBuffer; void* dstBuffer; size_t dstBufferSize; int cdict; int ctx; } ;
typedef TYPE_2__ cRess_t ;
typedef scalar_t__ U64 ;
struct TYPE_11__ {scalar_t__ contentSize; scalar_t__ contentChecksumFlag; scalar_t__ blockChecksumFlag; scalar_t__ blockSizeID; scalar_t__ blockMode; } ;
struct TYPE_14__ {int autoFlush; int compressionLevel; TYPE_1__ frameInfo; int favorDecSpeed; } ;
struct TYPE_13__ {size_t blockSize; scalar_t__ removeSrcFile; scalar_t__ contentSizeFlag; int favorDecSpeed; scalar_t__ streamChecksum; scalar_t__ blockChecksum; scalar_t__ blockSizeId; scalar_t__ blockIndependence; } ;
typedef TYPE_3__ LZ4IO_prefs_t ;
typedef TYPE_4__ LZ4F_preferences_t ;
typedef scalar_t__ LZ4F_contentChecksum_t ;
typedef int LZ4F_compressionContext_t ;
typedef scalar_t__ LZ4F_blockSizeID_t ;
typedef scalar_t__ LZ4F_blockMode_t ;
typedef scalar_t__ LZ4F_blockChecksum_t ;
typedef int FILE ;


 int DISPLAYLEVEL (int,char*,...) ;
 int DISPLAYUPDATE (int,char*,unsigned int,double) ;
 int EXM_THROW (int,char*,...) ;
 size_t LZ4F_compressBegin_usingCDict (int ,void* const,size_t const,int ,TYPE_4__*) ;
 size_t LZ4F_compressEnd (int ,void* const,size_t const,int *) ;
 size_t LZ4F_compressFrame_usingCDict (int ,void* const,size_t const,void* const,size_t,int ,TYPE_4__*) ;
 size_t LZ4F_compressUpdate (int ,void* const,size_t const,void* const,size_t,int *) ;
 int LZ4F_getErrorName (size_t) ;
 scalar_t__ LZ4F_isError (size_t) ;
 int * LZ4IO_openDstFile (TYPE_3__* const,char const*) ;
 int * LZ4IO_openSrcFile (char const*) ;
 scalar_t__ UTIL_getFileSize (char const*) ;
 scalar_t__ UTIL_getFileStat (char const*,int *) ;
 int UTIL_setFileStat (char const*,int *) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 size_t fread (void* const,size_t,size_t const,int *) ;
 size_t fwrite (void* const,int,size_t,int *) ;
 int memset (TYPE_4__*,int ,int) ;
 int nulmark ;
 scalar_t__ remove (char const*) ;
 int stdinmark ;
 int stdoutmark ;
 scalar_t__ strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int
LZ4IO_compressFilename_extRess(LZ4IO_prefs_t* const io_prefs, cRess_t ress,
                               const char* srcFileName, const char* dstFileName,
                               int compressionLevel)
{
    unsigned long long filesize = 0;
    unsigned long long compressedfilesize = 0;
    FILE* srcFile;
    FILE* dstFile;
    void* const srcBuffer = ress.srcBuffer;
    void* const dstBuffer = ress.dstBuffer;
    const size_t dstBufferSize = ress.dstBufferSize;
    const size_t blockSize = io_prefs->blockSize;
    size_t readSize;
    LZ4F_compressionContext_t ctx = ress.ctx;
    LZ4F_preferences_t prefs;


    srcFile = LZ4IO_openSrcFile(srcFileName);
    if (srcFile == ((void*)0)) return 1;
    dstFile = LZ4IO_openDstFile(io_prefs, dstFileName);
    if (dstFile == ((void*)0)) { fclose(srcFile); return 1; }
    memset(&prefs, 0, sizeof(prefs));



    prefs.autoFlush = 1;
    prefs.compressionLevel = compressionLevel;
    prefs.frameInfo.blockMode = (LZ4F_blockMode_t)io_prefs->blockIndependence;
    prefs.frameInfo.blockSizeID = (LZ4F_blockSizeID_t)io_prefs->blockSizeId;
    prefs.frameInfo.blockChecksumFlag = (LZ4F_blockChecksum_t)io_prefs->blockChecksum;
    prefs.frameInfo.contentChecksumFlag = (LZ4F_contentChecksum_t)io_prefs->streamChecksum;
    prefs.favorDecSpeed = io_prefs->favorDecSpeed;
    if (io_prefs->contentSizeFlag) {
      U64 const fileSize = UTIL_getFileSize(srcFileName);
      prefs.frameInfo.contentSize = fileSize;
      if (fileSize==0)
          DISPLAYLEVEL(3, "Warning : cannot determine input content size \n");
    }


    readSize = fread(srcBuffer, (size_t)1, blockSize, srcFile);
    if (ferror(srcFile)) EXM_THROW(30, "Error reading %s ", srcFileName);
    filesize += readSize;


    if (readSize < blockSize) {

        size_t cSize = LZ4F_compressFrame_usingCDict(ctx, dstBuffer, dstBufferSize, srcBuffer, readSize, ress.cdict, &prefs);
        if (LZ4F_isError(cSize)) EXM_THROW(31, "Compression failed : %s", LZ4F_getErrorName(cSize));
        compressedfilesize = cSize;
        DISPLAYUPDATE(2, "\rRead : %u MB   ==> %.2f%%   ",
                      (unsigned)(filesize>>20), (double)compressedfilesize/(filesize+!filesize)*100);


        { size_t const sizeCheck = fwrite(dstBuffer, 1, cSize, dstFile);
            if (sizeCheck!=cSize) EXM_THROW(32, "Write error : cannot write compressed block");
    } }

    else


    {

        size_t headerSize = LZ4F_compressBegin_usingCDict(ctx, dstBuffer, dstBufferSize, ress.cdict, &prefs);
        if (LZ4F_isError(headerSize)) EXM_THROW(33, "File header generation failed : %s", LZ4F_getErrorName(headerSize));
        { size_t const sizeCheck = fwrite(dstBuffer, 1, headerSize, dstFile);
          if (sizeCheck!=headerSize) EXM_THROW(34, "Write error : cannot write header"); }
        compressedfilesize += headerSize;


        while (readSize>0) {
            size_t outSize;


            outSize = LZ4F_compressUpdate(ctx, dstBuffer, dstBufferSize, srcBuffer, readSize, ((void*)0));
            if (LZ4F_isError(outSize)) EXM_THROW(35, "Compression failed : %s", LZ4F_getErrorName(outSize));
            compressedfilesize += outSize;
            DISPLAYUPDATE(2, "\rRead : %u MB   ==> %.2f%%   ", (unsigned)(filesize>>20), (double)compressedfilesize/filesize*100);


            { size_t const sizeCheck = fwrite(dstBuffer, 1, outSize, dstFile);
              if (sizeCheck!=outSize) EXM_THROW(36, "Write error : cannot write compressed block"); }


            readSize = fread(srcBuffer, (size_t)1, (size_t)blockSize, srcFile);
            filesize += readSize;
        }
        if (ferror(srcFile)) EXM_THROW(37, "Error reading %s ", srcFileName);


        headerSize = LZ4F_compressEnd(ctx, dstBuffer, dstBufferSize, ((void*)0));
        if (LZ4F_isError(headerSize)) EXM_THROW(38, "End of file generation failed : %s", LZ4F_getErrorName(headerSize));

        { size_t const sizeCheck = fwrite(dstBuffer, 1, headerSize, dstFile);
          if (sizeCheck!=headerSize) EXM_THROW(39, "Write error : cannot write end of stream"); }
        compressedfilesize += headerSize;
    }


    fclose (srcFile);
    if (strcmp(dstFileName,stdoutmark)) fclose (dstFile);


    { stat_t statbuf;
        if (strcmp (srcFileName, stdinmark)
         && strcmp (dstFileName, stdoutmark)
         && strcmp (dstFileName, nulmark)
         && UTIL_getFileStat(srcFileName, &statbuf)) {
            UTIL_setFileStat(dstFileName, &statbuf);
    } }

    if (io_prefs->removeSrcFile) {
        if (remove(srcFileName))
            EXM_THROW(40, "Remove error : %s: %s", srcFileName, strerror(errno));
    }


    DISPLAYLEVEL(2, "\r%79s\r", "");
    DISPLAYLEVEL(2, "Compressed %llu bytes into %llu bytes ==> %.2f%%\n",
                    filesize, compressedfilesize,
                    (double)compressedfilesize / (filesize + !filesize ) * 100);

    return 0;
}
