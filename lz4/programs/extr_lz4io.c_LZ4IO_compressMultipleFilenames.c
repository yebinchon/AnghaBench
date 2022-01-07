
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cRess_t ;
typedef int LZ4IO_prefs_t ;


 size_t FNSPACE ;
 scalar_t__ LZ4IO_compressFilename_extRess (int * const,int ,char const*,char*,int) ;
 int LZ4IO_createCResources (int * const) ;
 int LZ4IO_freeCResources (int ) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 char* stdoutmark ;
 int strcat (char*,char const*) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

int LZ4IO_compressMultipleFilenames(LZ4IO_prefs_t* const prefs,
                              const char** inFileNamesTable, int ifntSize,
                              const char* suffix,
                              int compressionLevel)
{
    int i;
    int missed_files = 0;
    char* dstFileName = (char*)malloc(FNSPACE);
    size_t ofnSize = FNSPACE;
    const size_t suffixSize = strlen(suffix);
    cRess_t ress;

    if (dstFileName == ((void*)0)) return ifntSize;
    ress = LZ4IO_createCResources(prefs);


    for (i=0; i<ifntSize; i++) {
        size_t const ifnSize = strlen(inFileNamesTable[i]);
        if (!strcmp(suffix, stdoutmark)) {
            missed_files += LZ4IO_compressFilename_extRess(prefs, ress,
                                    inFileNamesTable[i], stdoutmark,
                                    compressionLevel);
            continue;
        }
        if (ofnSize <= ifnSize+suffixSize+1) {
            free(dstFileName);
            ofnSize = ifnSize + 20;
            dstFileName = (char*)malloc(ofnSize);
            if (dstFileName==((void*)0)) {
                LZ4IO_freeCResources(ress);
                return ifntSize;
        } }
        strcpy(dstFileName, inFileNamesTable[i]);
        strcat(dstFileName, suffix);

        missed_files += LZ4IO_compressFilename_extRess(prefs, ress,
                                inFileNamesTable[i], dstFileName,
                                compressionLevel);
    }


    LZ4IO_freeCResources(ress);
    free(dstFileName);

    return missed_files;
}
