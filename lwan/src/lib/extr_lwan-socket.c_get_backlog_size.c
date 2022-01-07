
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SOMAXCONN ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*) ;

__attribute__((used)) static int get_backlog_size(void)
{
    int backlog = SOMAXCONN;


    FILE *somaxconn;

    somaxconn = fopen("/proc/sys/net/core/somaxconn", "re");
    if (somaxconn) {
        int tmp;
        if (fscanf(somaxconn, "%d", &tmp) == 1)
            backlog = tmp;
        fclose(somaxconn);
    }


    return backlog;
}
