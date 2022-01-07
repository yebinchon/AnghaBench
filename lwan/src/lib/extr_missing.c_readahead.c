
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int POSIX_FADV_WILLNEED ;
 int posix_fadvise (int,int ,int ,int ) ;

ssize_t readahead(int fd, off_t offset, size_t count)
{




    (void)fd;
    (void)offset;
    (void)count;

    return 0;

}
