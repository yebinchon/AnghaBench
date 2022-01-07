
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4IO_prefs_t ;
typedef int FILE ;


 int EXM_THROW (int,char*) ;
 unsigned int LZ4IO_fwriteSparse (int * const,int *,size_t*,size_t,unsigned int) ;
 int LZ4IO_fwriteSparseEnd (int *,unsigned int) ;
 size_t const MAGICNUMBER_SIZE ;
 int PTSIZE ;
 int PTSIZET ;
 scalar_t__ ferror (int *) ;
 size_t fread (size_t*,int,int ,int *) ;
 size_t fwrite (unsigned char*,int,size_t const,int *) ;

__attribute__((used)) static unsigned long long LZ4IO_passThrough(LZ4IO_prefs_t* const prefs, FILE* finput, FILE* foutput, unsigned char MNstore[MAGICNUMBER_SIZE])
{
 size_t buffer[PTSIZET];
    size_t readBytes = 1;
    unsigned long long total = MAGICNUMBER_SIZE;
    unsigned storedSkips = 0;

    size_t const sizeCheck = fwrite(MNstore, 1, MAGICNUMBER_SIZE, foutput);
    if (sizeCheck != MAGICNUMBER_SIZE) EXM_THROW(50, "Pass-through write error");

    while (readBytes) {
        readBytes = fread(buffer, 1, PTSIZE, finput);
        total += readBytes;
        storedSkips = LZ4IO_fwriteSparse(prefs, foutput, buffer, readBytes, storedSkips);
    }
    if (ferror(finput)) EXM_THROW(51, "Read Error");

    LZ4IO_fwriteSparseEnd(foutput, storedSkips);
    return total;
}
