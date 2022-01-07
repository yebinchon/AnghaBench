
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdevfs_ioctl {int ifno; int * data; int ioctl_code; } ;


 int O_RDWR ;
 int USBDEVFS_DISCONNECT ;
 int USBDEVFS_IOCTL ;
 int ioctl (int,int ,struct usbdevfs_ioctl*) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;

int main(int argc, char**argv)
{
        struct usbdevfs_ioctl command;
        int ret;
        int fd;
        int i;
        if (argc>1) {
                fd = open(argv[1],O_RDWR);
                if (fd<1){
                        perror("unable to open file");
                        return 1;
                }
                for (i=0;i<255;i++){
                        command.ifno = i;
                        command.ioctl_code = USBDEVFS_DISCONNECT;
                        command.data = ((void*)0);
                        ret = ioctl(fd, USBDEVFS_IOCTL, &command);
                        if(ret!=-1)
                                printf("un claimed interface %d %d\n",i,ret);
                }
        } else {
                printf ("usage: %s /dev/bus/usb/BUS/DEVICE\n",argv[0]);
                printf("Release all interfaces of this usb device for usage in virtualisation\n");
        }
}
