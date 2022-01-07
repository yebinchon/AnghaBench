
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * oldbat; int exename; void* oldexe; int batname; } ;


 int TARGET_COUNT ;
 int * alloc (scalar_t__) ;
 int * default_bat_dir ;
 int free (int *) ;
 char* installdir ;
 int mch_chdir (char*) ;
 int remove_tail (int *) ;
 void* searchpath_save (int ) ;
 int strcpy (int *,int *) ;
 scalar_t__ strlen (int *) ;
 char* sysdrive ;
 TYPE_1__* targets ;

__attribute__((used)) static void
find_bat_exe(int check_bat_only)
{
    int i;


    mch_chdir(sysdrive);
    mch_chdir("\\");

    for (i = 1; i < TARGET_COUNT; ++i)
    {
 targets[i].oldbat = searchpath_save(targets[i].batname);
 if (!check_bat_only)
     targets[i].oldexe = searchpath_save(targets[i].exename);

 if (default_bat_dir == ((void*)0) && targets[i].oldbat != ((void*)0))
 {
     default_bat_dir = alloc(strlen(targets[i].oldbat) + 1);
     strcpy(default_bat_dir, targets[i].oldbat);
     remove_tail(default_bat_dir);
 }
 if (check_bat_only && targets[i].oldbat != ((void*)0))
 {
     free(targets[i].oldbat);
     targets[i].oldbat = ((void*)0);
 }
    }

    mch_chdir(installdir);
}
