
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* resultfile; int type; int test; struct TYPE_3__* next; } ;
typedef TYPE_1__ _resultmap ;


 TYPE_1__* resultmap ;
 scalar_t__ strcmp (char const*,int ) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static
const char *
get_expectfile(const char *testname, const char *file)
{
 char *file_type;
 _resultmap *rm;





 if (!file || !(file_type = strrchr(file, '.')))
  return ((void*)0);

 file_type++;

 for (rm = resultmap; rm != ((void*)0); rm = rm->next)
 {
  if (strcmp(testname, rm->test) == 0 && strcmp(file_type, rm->type) == 0)
  {
   return rm->resultfile;
  }
 }

 return ((void*)0);
}
