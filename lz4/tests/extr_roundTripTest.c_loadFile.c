
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MSG (char*,char const*) ;
 int exit (int) ;
 int fclose (int * const) ;
 int * fopen (char const*,char*) ;
 size_t fread (void*,int,size_t,int * const) ;
 scalar_t__ isDirectory (char const*) ;

__attribute__((used)) static void loadFile(void* buffer, const char* fileName, size_t fileSize)
{
    FILE* const f = fopen(fileName, "rb");
    if (isDirectory(fileName)) {
        MSG("Ignoring %s directory \n", fileName);
        exit(2);
    }
    if (f==((void*)0)) {
        MSG("Impossible to open %s \n", fileName);
        exit(3);
    }
    { size_t const readSize = fread(buffer, 1, fileSize, f);
        if (readSize != fileSize) {
            MSG("Error reading %s \n", fileName);
            exit(5);
    } }
    fclose(f);
}
