
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ CONFIG_BOOLEAN_YES ;
 int SEEK_SET ;
 int close (int) ;
 int error (char*,char const*) ;
 scalar_t__ keep_cpuidle_fds_open ;
 int lseek (int,int ,int ) ;
 int read (int,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int read_one_state(char *buf, const char *filename, int *fd) {
    ssize_t ret = read(*fd, buf, 50);

    if(unlikely(ret <= 0)) {

        error("Cannot read file '%s'", filename);
        close(*fd);
        *fd = -1;
        return 0;
    }
    else {



        buf[ret - 1] = '\0';

        if(unlikely(keep_cpuidle_fds_open != CONFIG_BOOLEAN_YES)) {
            close(*fd);
            *fd = -1;
        }
        else if(lseek(*fd, 0, SEEK_SET) == -1) {
            error("Cannot seek in file '%s'", filename);
            close(*fd);
            *fd = -1;
        }
    }

    return 1;
}
