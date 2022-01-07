
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stat_t ;
struct TYPE_4__ {int * dstFile; } ;
typedef TYPE_1__ dRess_t ;
typedef int LZ4IO_prefs_t ;
typedef int FILE ;


 int LZ4IO_decompressSrcFile (int * const,TYPE_1__,char const*,char const*) ;
 int * LZ4IO_openDstFile (int * const,char const*) ;
 scalar_t__ UTIL_getFileStat (char const*,int *) ;
 int UTIL_setFileStat (char const*,int *) ;
 int fclose (int * const) ;
 int nulmark ;
 int stdinmark ;
 int stdoutmark ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int LZ4IO_decompressDstFile(LZ4IO_prefs_t* const prefs, dRess_t ress, const char* input_filename, const char* output_filename)
{
    stat_t statbuf;
    int stat_result = 0;
    FILE* const foutput = LZ4IO_openDstFile(prefs, output_filename);
    if (foutput==((void*)0)) return 1;

    if ( strcmp(input_filename, stdinmark)
      && UTIL_getFileStat(input_filename, &statbuf))
        stat_result = 1;

    ress.dstFile = foutput;
    LZ4IO_decompressSrcFile(prefs, ress, input_filename, output_filename);

    fclose(foutput);


    if ( stat_result != 0
      && strcmp (output_filename, stdoutmark)
      && strcmp (output_filename, nulmark)) {
        UTIL_setFileStat(output_filename, &statbuf);

    }

    return 0;
}
