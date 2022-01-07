
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int M_ERR ;
 scalar_t__ fclose (int *) ;
 int fprintf (int *,char*,unsigned int) ;
 int msg (int ,char*,char const*) ;
 int * platform_fopen (char const*,char*) ;
 unsigned int platform_getpid () ;

__attribute__((used)) static void
write_pid(const char *filename)
{
    if (filename)
    {
        unsigned int pid = 0;
        FILE *fp = platform_fopen(filename, "w");
        if (!fp)
        {
            msg(M_ERR, "Open error on pid file %s", filename);
        }

        pid = platform_getpid();
        fprintf(fp, "%u\n", pid);
        if (fclose(fp))
        {
            msg(M_ERR, "Close error on pid file %s", filename);
        }
    }
}
