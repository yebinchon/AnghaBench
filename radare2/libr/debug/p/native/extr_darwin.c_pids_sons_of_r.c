
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int FILE ;
typedef int DIR ;


 int atoi (char*) ;
 int closedir (int *) ;
 int cons_printf (char*,int,char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*,char*,char*,int*) ;
 int * opendir (char*) ;
 int pids_cmdline (int,char*) ;
 scalar_t__ readdir (int *) ;
 int sprintf (char*,char*,char*) ;

int pids_sons_of_r(int pid, int recursive, int limit) {
        int p, mola, tmp, n = 0;
        FILE *fd;
        char tmp3[8];
        char buf[128];
        char tmp2[1024];
        struct dirent *file;
        DIR *dh;

        if (pid < 1)
        return 0;
 dh = opendir ("/proc/");
 if (!dh) {
                return 0;
 }

        while ((file = (struct dirent *)readdir (dh))) {
                p = atoi (file->d_name);
                if (p) {
                        sprintf (buf,"/proc/%s/stat", file->d_name);
                        fd = fopen (buf, "r");
                        if (fd) {
                                mola = 0;
                                fscanf (fd,"%d %s %s %d",
                                        &tmp, tmp2, tmp3, &mola);
                                if (mola == pid) {
                                        pids_cmdline (p, tmp2);


                                        cons_printf (" `- %d : %s (%s)\n",
      p, tmp2, (tmp3[0]=='S')?
      "sleeping":(tmp3[0]=='T')?
      "stopped":"running");
                                        n++;
                                        if (recursive<limit) {
                                                n += pids_sons_of_r (p, recursive+1, limit);
     }
                                }
                        }
                        fclose (fd);
                }
        }
 closedir (dh);
        return n;
}
