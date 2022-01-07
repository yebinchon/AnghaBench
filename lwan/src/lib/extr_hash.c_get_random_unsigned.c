
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 unsigned int DEFAULT_ODD_CONSTANT ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int SYS_getrandom ;
 int close (int) ;
 int getentropy (unsigned int*,int) ;
 int open (char*,int) ;
 int read (int,unsigned int*,int) ;
 long syscall (int ,unsigned int*,int,int ) ;

__attribute__((used)) static unsigned int get_random_unsigned(void)
{
    unsigned int value;
    int fd = open("/dev/urandom", O_CLOEXEC | O_RDONLY);
    if (fd < 0) {
        fd = open("/dev/random", O_CLOEXEC | O_RDONLY);
        if (fd < 0)
            return DEFAULT_ODD_CONSTANT;
    }
    if (read(fd, &value, sizeof(value)) != sizeof(value))
        value = DEFAULT_ODD_CONSTANT;
    close(fd);

    return value;
}
