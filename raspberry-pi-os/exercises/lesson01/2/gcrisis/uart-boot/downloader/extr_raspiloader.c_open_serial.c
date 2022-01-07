
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; scalar_t__* c_cc; } ;


 int B115200 ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int EXIT_FAILURE ;
 int O_NOCTTY ;
 int O_RDWR ;
 int TCSAFLUSH ;
 size_t VMIN ;
 size_t VTIME ;
 scalar_t__ cfsetispeed (struct termios*,int ) ;
 scalar_t__ cfsetospeed (struct termios*,int ) ;
 int do_exit (int,int ) ;
 int fprintf (int ,char*,char const*) ;
 int isatty (int) ;
 int open (char const*,int) ;
 int perror (char*) ;
 int printf (char*,int) ;
 int stderr ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

int open_serial(const char *dev) {

    struct termios termios;
    int fd = open(dev, O_RDWR | O_NOCTTY);
    printf("fd=%d\r\n",fd);
    if (fd == -1)
    {

        return -1;
    }

    if (!isatty(fd))
    {
        fprintf(stderr, "%s is not a tty\n", dev);
        do_exit(fd, EXIT_FAILURE);
    }


    if(tcgetattr(fd, &termios) == -1)
    {
        perror("Failed to get attributes of device");
        do_exit(fd, EXIT_FAILURE);
    }

    termios.c_cc[VTIME] = 0;
    termios.c_cc[VMIN] = 0;


    termios.c_iflag = 0;
    termios.c_oflag = 0;
    termios.c_cflag = CS8 | CREAD | CLOCAL;
    termios.c_lflag = 0;


    if((cfsetispeed(&termios, B115200) < 0) ||
       (cfsetospeed(&termios, B115200) < 0))
    {
        perror("Failed to set baud-rate");
        do_exit(fd, EXIT_FAILURE);
    }


    if (tcsetattr(fd, TCSAFLUSH, &termios) == -1) {
        perror("tcsetattr()");
        do_exit(fd, EXIT_FAILURE);
    }
    return fd;
}
