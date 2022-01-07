
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEGV_ACCERR ;
 int SEGV_BNDERR ;
 int SEGV_MAPERR ;
 int SEGV_PKUERR ;

__attribute__((used)) static char *si_code_str(int si_code)
{
 if (si_code == SEGV_MAPERR)
  return "SEGV_MAPERR";
 if (si_code == SEGV_ACCERR)
  return "SEGV_ACCERR";
 if (si_code == SEGV_BNDERR)
  return "SEGV_BNDERR";
 if (si_code == SEGV_PKUERR)
  return "SEGV_PKUERR";
 return "UNKNOWN";
}
