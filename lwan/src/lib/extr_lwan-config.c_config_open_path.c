
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_2__ {void* addr; size_t sz; } ;
struct config {TYPE_1__ mapped; } ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int lwan_status_perror (char*,char const*) ;
 struct config* malloc (int) ;
 void* mmap (int *,size_t,int ,int ,int,int ) ;
 int munmap (void*,size_t) ;
 int open (char const*,int) ;

__attribute__((used)) static struct config *
config_open_path(const char *path, void **data, size_t *size)
{
    struct config *config;
    struct stat st;
    void *mapped;
    int fd;

    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) {
        lwan_status_perror("Could not open configuration file: %s", path);
        return ((void*)0);
    }

    if (fstat(fd, &st) < 0) {
        close(fd);
        return ((void*)0);
    }

    mapped = mmap(((void*)0), (size_t)st.st_size, PROT_READ, MAP_SHARED, fd, 0);
    close(fd);
    if (mapped == MAP_FAILED)
        return ((void*)0);

    config = malloc(sizeof(*config));
    if (!config) {
        munmap(mapped, (size_t)st.st_size);
        return ((void*)0);
    }

    *data = config->mapped.addr = mapped;
    *size = config->mapped.sz = (size_t)st.st_size;

    return config;
}
