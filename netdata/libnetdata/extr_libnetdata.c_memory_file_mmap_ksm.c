
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int MADV_DONTFORK ;
 int MADV_MERGEABLE ;
 int MADV_SEQUENTIAL ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_SET ;
 int close (int) ;
 int error (char*,char const*) ;
 scalar_t__ lseek (int,int ,int ) ;
 scalar_t__ madvise (void*,size_t,int) ;
 int memory_file_open (char const*,size_t) ;
 void* mmap (int *,size_t,int,int,int,int ) ;
 int mmap_accounting (size_t) ;
 scalar_t__ read (int,void*,size_t) ;

__attribute__((used)) static void *memory_file_mmap_ksm(const char *filename, size_t size, int flags) {

    static int log_madvise_2 = 1, log_madvise_3 = 1;

    int fd = -1;
    if(filename) {
        fd = memory_file_open(filename, size);
        if(fd == -1) return MAP_FAILED;
    }

    void *mem = mmap(((void*)0), size, PROT_READ | PROT_WRITE, flags | MAP_ANONYMOUS, -1, 0);
    if (mem != MAP_FAILED) {



        if(fd != -1) {
            if (lseek(fd, 0, SEEK_SET) == 0) {
                if (read(fd, mem, size) != (ssize_t) size)
                    error("Cannot read from file '%s'", filename);
            }
            else error("Cannot seek to beginning of file '%s'.", filename);
        }


        if (madvise(mem, size, MADV_SEQUENTIAL | MADV_DONTFORK) != 0 && log_madvise_2) {
            error("Cannot advise the kernel about the memory usage (MADV_SEQUENTIAL|MADV_DONTFORK) of file '%s'.", filename);
            log_madvise_2--;
        }

        if (madvise(mem, size, MADV_MERGEABLE) != 0 && log_madvise_3) {
            error("Cannot advise the kernel about the memory usage (MADV_MERGEABLE) of file '%s'.", filename);
            log_madvise_3--;
        }
    }

    if(fd != -1)
        close(fd);

    return mem;
}
