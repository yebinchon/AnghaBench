
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int) ;
 int exit (int) ;
 scalar_t__ ferror (int *) ;
 int fprintf (int ,char*) ;
 size_t fwrite (void*,size_t,size_t,int *) ;
 int stderr ;

__attribute__((used)) static void safe_fwrite(void* buf, size_t eltSize, size_t nbElt, FILE* f)
{
    size_t const writtenSize = fwrite(buf, eltSize, nbElt, f);
    size_t const expectedSize = eltSize * nbElt;
    if (nbElt>0) assert(expectedSize / nbElt == eltSize);
    if (writtenSize < expectedSize) {
        if (ferror(f))
            fprintf(stderr, "Write failed \n");
        else
            fprintf(stderr, "Write too short \n");
        exit(1);
    }
}
