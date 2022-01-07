
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_pid_file ;
typedef int pid_t ;
typedef int buffer ;
typedef int FILE ;


 int F_OK ;
 scalar_t__ access (char const*,int ) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,long) ;
 scalar_t__ getpid () ;
 scalar_t__ kill (int ,int ) ;
 scalar_t__ rename (char*,char const*) ;
 scalar_t__ safe_strtoul (char*,unsigned int*) ;
 int snprintf (char*,int,char*,char const*) ;
 int * stderr ;
 int vperror (char*,char*,...) ;

__attribute__((used)) static void save_pid(const char *pid_file) {
    FILE *fp;
    if (access(pid_file, F_OK) == 0) {
        if ((fp = fopen(pid_file, "r")) != ((void*)0)) {
            char buffer[1024];
            if (fgets(buffer, sizeof(buffer), fp) != ((void*)0)) {
                unsigned int pid;
                if (safe_strtoul(buffer, &pid) && kill((pid_t)pid, 0) == 0) {
                    fprintf(stderr, "WARNING: The pid file contained the following (running) pid: %u\n", pid);
                }
            }
            fclose(fp);
        }
    }






    char tmp_pid_file[1024];
    snprintf(tmp_pid_file, sizeof(tmp_pid_file), "%s.tmp", pid_file);

    if ((fp = fopen(tmp_pid_file, "w")) == ((void*)0)) {
        vperror("Could not open the pid file %s for writing", tmp_pid_file);
        return;
    }

    fprintf(fp,"%ld\n", (long)getpid());
    if (fclose(fp) == -1) {
        vperror("Could not close the pid file %s", tmp_pid_file);
    }

    if (rename(tmp_pid_file, pid_file) != 0) {
        vperror("Could not rename the pid file from %s to %s",
                tmp_pid_file, pid_file);
    }
}
