
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * dstFile; } ;
typedef TYPE_1__ dRess_t ;
struct TYPE_8__ {scalar_t__ removeSrcFile; } ;
typedef TYPE_2__ LZ4IO_prefs_t ;
typedef int FILE ;


 int DISPLAYLEVEL (int,char*,char const*,...) ;
 unsigned long long const ENDOFSTREAM ;
 int EXM_THROW (int,char*,char const*,int ) ;
 int * LZ4IO_openSrcFile (char const*) ;
 int errno ;
 int fclose (int * const) ;
 scalar_t__ remove (char const*) ;
 unsigned long long selectDecoder (TYPE_2__* const,TYPE_1__,int * const,int * const) ;
 int strerror (int ) ;

__attribute__((used)) static int LZ4IO_decompressSrcFile(LZ4IO_prefs_t* const prefs, dRess_t ress, const char* input_filename, const char* output_filename)
{
    FILE* const foutput = ress.dstFile;
    unsigned long long filesize = 0;


    FILE* const finput = LZ4IO_openSrcFile(input_filename);
    if (finput==((void*)0)) return 1;


    for ( ; ; ) {
        unsigned long long const decodedSize =
                        selectDecoder(prefs, ress, finput, foutput);
        if (decodedSize == ENDOFSTREAM) break;
        filesize += decodedSize;
    }


    fclose(finput);
    if (prefs->removeSrcFile) {
        if (remove(input_filename))
            EXM_THROW(45, "Remove error : %s: %s", input_filename, strerror(errno));
    }


    DISPLAYLEVEL(2, "\r%79s\r", "");
    DISPLAYLEVEL(2, "%-20.20s : decoded %llu bytes \n", input_filename, filesize);
    (void)output_filename;

    return 0;
}
