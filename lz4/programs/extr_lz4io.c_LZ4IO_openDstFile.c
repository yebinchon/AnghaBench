
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sparseFileSupport; int overwrite; } ;
typedef TYPE_1__ LZ4IO_prefs_t ;
typedef int FILE ;


 int DISPLAY (char*,...) ;
 int DISPLAYLEVEL (int,char*,...) ;
 int EOF ;
 int SET_BINARY_MODE (int *) ;
 int SET_SPARSE_FILE_MODE (int *) ;
 int assert (int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int g_displayLevel ;
 int getchar () ;
 int nulmark ;
 int * stdout ;
 int stdoutmark ;
 scalar_t__ strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static FILE* LZ4IO_openDstFile(LZ4IO_prefs_t* const prefs, const char* dstFileName)
{
    FILE* f;
    assert(dstFileName != ((void*)0));

    if (!strcmp (dstFileName, stdoutmark)) {
        DISPLAYLEVEL(4,"Using stdout for output\n");
        f = stdout;
        SET_BINARY_MODE(stdout);
        if (prefs->sparseFileSupport==1) {
            prefs->sparseFileSupport = 0;
            DISPLAYLEVEL(4, "Sparse File Support is automatically disabled on stdout ; try --sparse \n");
        }
    } else {
        if (!prefs->overwrite && strcmp (dstFileName, nulmark)) {
            f = fopen( dstFileName, "rb" );
            if (f != ((void*)0)) {
                fclose(f);
                if (g_displayLevel <= 1) {
                    DISPLAY("%s already exists; not overwritten  \n", dstFileName);
                    return ((void*)0);
                }
                DISPLAY("%s already exists; do you wish to overwrite (y/N) ? ", dstFileName);
                { int ch = getchar();
                    if ((ch!='Y') && (ch!='y')) {
                        DISPLAY("    not overwritten  \n");
                        return ((void*)0);
                    }
                    while ((ch!=EOF) && (ch!='\n')) ch = getchar();
        } } }
        f = fopen( dstFileName, "wb" );
        if (f==((void*)0)) DISPLAYLEVEL(1, "%s: %s\n", dstFileName, strerror(errno));
    }


    if (f && prefs->sparseFileSupport) { SET_SPARSE_FILE_MODE(f); }

    return f;
}
