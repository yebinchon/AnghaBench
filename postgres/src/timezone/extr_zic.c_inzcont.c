
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZONEC_MAXFIELDS ;
 int ZONEC_MINFIELDS ;
 int _ (char*) ;
 int error (int ) ;
 int inzsub (char**,int,int) ;

__attribute__((used)) static bool
inzcont(char **fields, int nfields)
{
 if (nfields < ZONEC_MINFIELDS || nfields > ZONEC_MAXFIELDS)
 {
  error(_("wrong number of fields on Zone continuation line"));
  return 0;
 }
 return inzsub(fields, nfields, 1);
}
