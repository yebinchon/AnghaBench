
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int EXIT_FAILURE ;
 int MaxAllocSize ;
 char* _ (char*) ;
 int elog (int ,char*,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ unlikely (int) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

size_t
pvsnprintf(char *buf, size_t len, const char *fmt, va_list args)
{
 int nprinted;

 nprinted = vsnprintf(buf, len, fmt, args);


 if (unlikely(nprinted < 0))
 {

  elog(ERROR, "vsnprintf failed: %m with format string \"%s\"", fmt);





 }

 if ((size_t) nprinted < len)
 {

  return (size_t) nprinted;
 }
 if (unlikely((size_t) nprinted > MaxAllocSize - 1))
 {

  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("out of memory")));




 }

 return nprinted + 1;
}
