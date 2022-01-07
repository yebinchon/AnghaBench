
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int batname; } ;


 int TARGET_COUNT ;
 scalar_t__ batfile_thisversion (char*) ;
 int free (char*) ;
 int printf (char*,char*) ;
 int remove (char*) ;
 char* searchpath_save (int ) ;
 TYPE_1__* targets ;

__attribute__((used)) static int
remove_batfiles(int doit)
{
    char *batfile_path;
    int i;
    int found = 0;

    for (i = 1; i < TARGET_COUNT; ++i)
    {
 batfile_path = searchpath_save(targets[i].batname);
 if (batfile_path != ((void*)0) && batfile_thisversion(batfile_path))
 {
     ++found;
     if (doit)
     {
  printf("removing %s\n", batfile_path);
  remove(batfile_path);
     }
     else
  printf(" - the batch file %s\n", batfile_path);
     free(batfile_path);
 }
    }
    return found;
}
