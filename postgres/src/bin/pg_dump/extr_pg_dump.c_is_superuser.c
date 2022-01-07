
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connection; } ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 char* PQparameterStatus (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool
is_superuser(Archive *fout)
{
 ArchiveHandle *AH = (ArchiveHandle *) fout;
 const char *val;

 val = PQparameterStatus(AH->connection, "is_superuser");

 if (val && strcmp(val, "on") == 0)
  return 1;

 return 0;
}
