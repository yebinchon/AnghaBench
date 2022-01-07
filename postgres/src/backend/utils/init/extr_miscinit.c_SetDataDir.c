
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssertArg (char const*) ;
 char* DataDir ;
 int free (char*) ;
 char* make_absolute_path (char const*) ;

void
SetDataDir(const char *dir)
{
 char *new;

 AssertArg(dir);


 new = make_absolute_path(dir);

 if (DataDir)
  free(DataDir);
 DataDir = new;
}
