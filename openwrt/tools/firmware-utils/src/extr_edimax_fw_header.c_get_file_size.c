
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int ERRS (char*,char*) ;
 int stat (char*,struct stat*) ;

__attribute__((used)) static int get_file_size(char *name)
{
 struct stat st;
 int res;

 res = stat(name, &st);
 if (res){
  ERRS("stat failed on %s", name);
  return -1;
 }

 return st.st_size;
}
