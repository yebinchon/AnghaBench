
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {int dummy; } ;
typedef int filename ;
typedef int FILE ;


 int fclose (int *) ;
 int fopen_s (int **,char*,char*) ;
 int fprintf (int ,char*,...) ;
 int masscan_echo (struct Masscan*,int *,int ) ;
 int perror (char*) ;
 int stderr ;
 int strcpy_s (char*,int,char*) ;

void
masscan_save_state(struct Masscan *masscan)
{
    char filename[512];
    FILE *fp;
    int err;


    strcpy_s(filename, sizeof(filename), "paused.conf");
    fprintf(stderr, "                                   "
                    "                                   \r");
    fprintf(stderr, "saving resume file to: %s\n", filename);

    err = fopen_s(&fp, filename, "wt");
    if (err) {
        perror(filename);
        return;
    }


    masscan_echo(masscan, fp, 0);

    fclose(fp);
}
