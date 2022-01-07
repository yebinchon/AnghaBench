
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dRess_t ;
typedef scalar_t__ clock_t ;
typedef int LZ4IO_prefs_t ;


 double CLOCKS_PER_SEC ;
 int DISPLAYLEVEL (int,char*,double const) ;
 int LZ4IO_createDResources (int * const) ;
 int LZ4IO_decompressDstFile (int * const,int const,char const*,char const*) ;
 int LZ4IO_freeDResources (int const) ;
 scalar_t__ clock () ;

int LZ4IO_decompressFilename(LZ4IO_prefs_t* const prefs, const char* input_filename, const char* output_filename)
{
    dRess_t const ress = LZ4IO_createDResources(prefs);
    clock_t const start = clock();

    int const missingFiles = LZ4IO_decompressDstFile(prefs, ress, input_filename, output_filename);

    clock_t const end = clock();
    double const seconds = (double)(end - start) / CLOCKS_PER_SEC;
    DISPLAYLEVEL(4, "Done in %.2f sec  \n", seconds);

    LZ4IO_freeDResources(ress);
    return missingFiles;
}
