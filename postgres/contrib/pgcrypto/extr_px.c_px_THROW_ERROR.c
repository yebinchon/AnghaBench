
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_EXTERNAL_ROUTINE_INVOCATION_EXCEPTION ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int PXE_NO_RANDOM ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int px_strerror (int) ;

void
px_THROW_ERROR(int err)
{
 if (err == PXE_NO_RANDOM)
 {
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("could not generate a random number")));
 }
 else
 {

  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_INVOCATION_EXCEPTION),
     errmsg("%s", px_strerror(err))));
 }
}
