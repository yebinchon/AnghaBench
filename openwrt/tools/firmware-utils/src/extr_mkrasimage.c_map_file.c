
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int member_0; } ;
struct file_info {int name; int data; int size; } ;
typedef int mode_t ;


 int ERR (char*,int ) ;
 int EXIT_FAILURE ;
 int MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int exit (int ) ;
 int fstat (int,struct stat*) ;
 int mmap (int ,int ,int ,int ,int,int ) ;
 int open (int ,int ,int ) ;

void map_file(struct file_info *finfo)
{
    struct stat file_stat = {0};
    int fd;

    fd = open(finfo->name, O_RDONLY, (mode_t)0600);
    if (fd == -1) {
        ERR("Error while opening file %s.", finfo->name);
        exit(EXIT_FAILURE);
    }

    if (fstat(fd, &file_stat) == -1) {
        ERR("Error getting file size for %s.", finfo->name);
        exit(EXIT_FAILURE);
    }

    finfo->size = file_stat.st_size;
    finfo->data = mmap(0, finfo->size, PROT_READ, MAP_SHARED, fd, 0);

    if (finfo->data == MAP_FAILED) {
        ERR("Error mapping file %s.", finfo->name);
        exit(EXIT_FAILURE);
    }

    close(fd);
}
