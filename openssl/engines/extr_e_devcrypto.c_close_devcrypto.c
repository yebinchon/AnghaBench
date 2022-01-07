
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfd ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int close_devcrypto(void)
{
    int ret;

    if (cfd < 0)
        return 1;
    ret = close(cfd);
    cfd = -1;
    if (ret != 0) {
        fprintf(stderr, "Error closing /dev/crypto: %s\n", strerror(errno));
        return 0;
    }
    return 1;
}
