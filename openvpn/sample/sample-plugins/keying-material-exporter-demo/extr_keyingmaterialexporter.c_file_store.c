
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void
file_store(char *file, char *content)
{
    FILE *f;
    if (!(f = fopen(file, "w+")))
    {
        return;
    }

    fprintf(f, "%s", content);
    fclose(f);
}
