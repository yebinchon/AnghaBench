
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DISPLAYLEVEL (int,char*,...) ;
 int SET_BINARY_MODE (int *) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int * stdin ;
 int stdinmark ;
 int strcmp (char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static FILE* LZ4IO_openSrcFile(const char* srcFileName)
{
    FILE* f;

    if (!strcmp (srcFileName, stdinmark)) {
        DISPLAYLEVEL(4,"Using stdin for input\n");
        f = stdin;
        SET_BINARY_MODE(stdin);
    } else {
        f = fopen(srcFileName, "rb");
        if ( f==((void*)0) ) DISPLAYLEVEL(1, "%s: %s \n", srcFileName, strerror(errno));
    }

    return f;
}
