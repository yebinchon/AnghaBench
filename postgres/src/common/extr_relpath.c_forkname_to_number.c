
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ForkNumber ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 size_t InvalidForkNumber ;
 size_t MAX_FORKNUM ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int * forkNames ;
 scalar_t__ strcmp (int ,char const*) ;

ForkNumber
forkname_to_number(const char *forkName)
{
 ForkNumber forkNum;

 for (forkNum = 0; forkNum <= MAX_FORKNUM; forkNum++)
  if (strcmp(forkNames[forkNum], forkName) == 0)
   return forkNum;


 ereport(ERROR,
   (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
    errmsg("invalid fork name"),
    errhint("Valid fork names are \"main\", \"fsm\", "
      "\"vm\", and \"init\".")));


 return InvalidForkNumber;
}
