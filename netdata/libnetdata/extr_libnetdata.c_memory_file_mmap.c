
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_DONTFORK ;
 int MADV_SEQUENTIAL ;
 int MADV_WILLNEED ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 int error (char*) ;
 scalar_t__ madvise (void*,size_t,int) ;
 int memory_file_open (char const*,size_t) ;
 void* mmap (int *,size_t,int,int,int,int ) ;
 int mmap_accounting (size_t) ;

__attribute__((used)) static void *memory_file_mmap(const char *filename, size_t size, int flags) {

    static int log_madvise = 1;

    int fd = -1;
    if(filename) {
        fd = memory_file_open(filename, size);
        if(fd == -1) return MAP_FAILED;
    }

    void *mem = mmap(((void*)0), size, PROT_READ | PROT_WRITE, flags, fd, 0);
    if (mem != MAP_FAILED) {



        int advise = MADV_SEQUENTIAL | MADV_DONTFORK;
        if (flags & MAP_SHARED) advise |= MADV_WILLNEED;

        if (madvise(mem, size, advise) != 0 && log_madvise) {
            error("Cannot advise the kernel about shared memory usage.");
            log_madvise--;
        }
    }

    if(fd != -1)
        close(fd);

    return mem;
}
