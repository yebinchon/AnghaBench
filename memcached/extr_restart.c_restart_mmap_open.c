
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_CREAT ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int S_IRWXU ;
 long _find_pagesize () ;
 int abort () ;
 int fprintf (int ,char*) ;
 scalar_t__ ftruncate (int ,size_t const) ;
 int memory_file ;
 void* mmap (int *,size_t const,int,int ,int ,int ) ;
 void* mmap_base ;
 int mmap_fd ;
 int open (char const*,int,int ) ;
 int perror (char*) ;
 scalar_t__ restart_check (char const*) ;
 size_t slabmem_limit ;
 int stderr ;
 int strdup (char const*) ;

bool restart_mmap_open(const size_t limit, const char *file, void **mem_base) {
    bool reuse_mmap = 1;

    long pagesize = _find_pagesize();
    memory_file = strdup(file);
    mmap_fd = open(file, O_RDWR|O_CREAT, S_IRWXU);
    if (ftruncate(mmap_fd, limit) != 0) {
        perror("ftruncate failed");
        abort();
    }

    if (limit % pagesize) {


        fprintf(stderr, "[restart] memory limit not divisible evenly by pagesize (please report bug)\n");
        abort();
    }
    mmap_base = mmap(((void*)0), limit, PROT_READ|PROT_WRITE, MAP_SHARED, mmap_fd, 0);
    if (mmap_base == MAP_FAILED) {
        perror("failed to mmap, aborting");
        abort();
    }

    slabmem_limit = limit;
    if (restart_check(file) != 0) {
        reuse_mmap = 0;
    }
    *mem_base = mmap_base;

    return reuse_mmap;
}
