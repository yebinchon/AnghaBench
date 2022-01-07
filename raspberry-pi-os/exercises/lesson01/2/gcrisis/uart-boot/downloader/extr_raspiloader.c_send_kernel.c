
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int ssize_t ;
typedef int off_t ;


 int BUF_SIZE ;
 int EXIT_FAILURE ;
 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int do_exit (int,int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ htole32 (int) ;
 int lseek (int,long,int ) ;
 int open (char const*,int ) ;
 int perror (char const*) ;
 int printf (char*,char const*,size_t) ;
 int read (int,...) ;
 int stderr ;
 int tcdrain (int) ;
 int write (int,char*,int) ;

void send_kernel(int fd, const char *file) {
    int file_fd;
    off_t off;
    uint32_t size;
    ssize_t pos;
    char *p;
    bool done = 0;


    if ((file_fd = open(file, O_RDONLY)) == -1) {
        perror(file);
        do_exit(fd, EXIT_FAILURE);
    }


    off = lseek(file_fd, 0L, SEEK_END);
    if (off > 0x200000) {
        fprintf(stderr, "kernel too big\n");
        do_exit(fd, EXIT_FAILURE);
    }
    size = htole32(off);
    lseek(file_fd, 0L, SEEK_SET);

    printf("### sending kernel %s [%zu byte]\n", file, (size_t)off);


    p = (uint8_t*)&size;
    pos = 0;
    while(pos < 4)
    {
        ssize_t len = write(fd, &p[pos], 4 - pos);
         tcdrain(fd);
        if (len == -1) {
            perror("write()");
            do_exit(fd, EXIT_FAILURE);
        }
        pos += len;
    }

    uint8_t sizee[4]={0};
    pos=0;
    while(pos<4){
    int nn=read(fd, sizee, 4-pos);
        pos+=nn;
    }
    uint32_t size_check=sizee[0]<<24|sizee[1]<<16|sizee[2]<<8|sizee[3];
    if(size_check!=size)
    {
        perror("size check error");
        do_exit(fd, EXIT_FAILURE);
    }
    while(!done)
    {
        char buf[BUF_SIZE];
        ssize_t pos = 0;
        ssize_t len = read(file_fd, buf, BUF_SIZE);
        switch(len) {
        case -1:
            perror("read()");
            do_exit(fd, EXIT_FAILURE);
        case 0:
            done = 1;
        }

        while(len > 0)
        {
            ssize_t len2 = write(fd, &buf[pos], len);

            tcdrain(fd);

            if (len2 == -1) {
            perror("write()");
            do_exit(fd, EXIT_FAILURE);
            }
            len -= len2;
            pos += len2;
        }
    }
    fprintf(stderr, "### finished sending\n");

    return;
}
