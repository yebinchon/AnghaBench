
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int LOG (int,char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fopen_s (int **,char*,char*) ;
 scalar_t__ memcmp (char*,char*,int) ;

int
PFRING_is_installed(void)
{

    FILE *fp;
    int err;
    char line[256];
    int found = 0;

    err = fopen_s(&fp, "/proc/modules", "rb");
    if (err)
        return 0;

    while (fgets(line, sizeof(line), fp)) {
        if (memcmp(line, "pf_ring ", 8) == 0) {
            found = 1;
            LOG(2, "pfring: found 'pf_ring' driver\n");
        }
        if (memcmp(line, "ixgbe ", 6) == 0) {
            LOG(2, "pfring: found 'ixgbe' driver\n");
        }
        if (memcmp(line, "e1000e ", 8) == 0) {
            LOG(2, "pfring: found 'e1000e' driver\n");
        }
    }
    fclose(fp);
    return found;



}
