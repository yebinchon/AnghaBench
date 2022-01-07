
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_SYNC ;
 scalar_t__ close (int ) ;
 int fprintf (int ,char*) ;
 int free (int ) ;
 int memory_file ;
 int mmap_base ;
 int mmap_fd ;
 int msync (int ,int ,int ) ;
 scalar_t__ munmap (int ,int ) ;
 int perror (char*) ;
 scalar_t__ restart_save (int ) ;
 int slabmem_limit ;
 int stderr ;

void restart_mmap_close(void) {
    msync(mmap_base, slabmem_limit, MS_SYNC);

    if (restart_save(memory_file) != 0) {
        fprintf(stderr, "[restart] failed to save metadata");
    }

    if (munmap(mmap_base, slabmem_limit) != 0) {
        perror("[restart] failed to munmap shared memory");
    } else if (close(mmap_fd) != 0) {
        perror("[restart] failed to close shared memory fd");
    }

    free(memory_file);
}
