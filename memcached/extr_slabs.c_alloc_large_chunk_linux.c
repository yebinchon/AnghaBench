
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int verbose; } ;
typedef int FILE ;


 int MADV_HUGEPAGE ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (void*) ;
 int madvise (void*,size_t const,int ) ;
 int posix_memalign (void**,size_t,size_t const) ;
 TYPE_1__ settings ;
 int sscanf (char*,char*,size_t*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void * alloc_large_chunk_linux(const size_t limit)
{
    size_t pagesize = 0;
    void *ptr = ((void*)0);
    FILE *fp;
    int ret;


    fp = fopen("/proc/meminfo", "r");
    if (fp != ((void*)0)) {
        char buf[64];

        while ((fgets(buf, sizeof(buf), fp)))
            if (!strncmp(buf, "Hugepagesize:", 13)) {
                ret = sscanf(buf + 13, "%zu\n", &pagesize);


                pagesize <<= 10;
            }
        fclose(fp);
    }

    if (!pagesize) {
        fprintf(stderr, "Failed to get supported huge page size\n");
        return ((void*)0);
    }

    if (settings.verbose > 1)
        fprintf(stderr, "huge page size: %zu\n", pagesize);



    ret = posix_memalign(&ptr, pagesize, limit);
    if (ret != 0) {
        fprintf(stderr, "Failed to get aligned memory chunk: %d\n", ret);
        return ((void*)0);
    }

    ret = madvise(ptr, limit, MADV_HUGEPAGE);
    if (ret < 0) {
        fprintf(stderr, "Failed to set transparent hugepage hint: %d\n", ret);
        free(ptr);
        ptr = ((void*)0);
    }

    return ptr;
}
