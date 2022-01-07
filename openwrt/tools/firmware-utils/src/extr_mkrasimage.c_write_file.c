
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int size; int data; int name; } ;
typedef int FILE ;


 int ERR (char*) ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 int fwrite (int ,int ,int,int *) ;

void write_file(struct file_info *finfo)
{
    FILE *fout = fopen(finfo->name, "w");

    fwrite(finfo->data, finfo->size, 1, fout);

    if (ferror(fout)) {
        ERR("Wanted to write, but something went wrong.");
        exit(EXIT_FAILURE);
    }

    fclose(fout);
}
