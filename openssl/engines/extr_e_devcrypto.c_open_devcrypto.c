
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int O_RDWR ;
 scalar_t__ cfd ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ open (char*,int ,int ) ;
 int stderr ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int open_devcrypto(void)
{
    if (cfd >= 0)
        return 1;

    if ((cfd = open("/dev/crypto", O_RDWR, 0)) < 0) {

        if (errno != ENOENT)

            fprintf(stderr, "Could not open /dev/crypto: %s\n", strerror(errno));
        return 0;
    }

    return 1;
}
