
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int DH ;


 int * AllocateFile (char*,char*) ;
 int DH_CHECK_P_NOT_PRIME ;
 int DH_CHECK_P_NOT_SAFE_PRIME ;
 int DH_NOT_SUITABLE_GENERATOR ;
 scalar_t__ DH_check (int *,int*) ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERR_get_error () ;
 int FATAL ;
 int FreeFile (int *) ;
 int LOG ;
 int * PEM_read_DHparams (int *,int *,int *,int *) ;
 int SSLerrmessage (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;

__attribute__((used)) static DH *
load_dh_file(char *filename, bool isServerStart)
{
 FILE *fp;
 DH *dh = ((void*)0);
 int codes;


 if ((fp = AllocateFile(filename, "r")) == ((void*)0))
 {
  ereport(isServerStart ? FATAL : LOG,
    (errcode_for_file_access(),
     errmsg("could not open DH parameters file \"%s\": %m",
      filename)));
  return ((void*)0);
 }

 dh = PEM_read_DHparams(fp, ((void*)0), ((void*)0), ((void*)0));
 FreeFile(fp);

 if (dh == ((void*)0))
 {
  ereport(isServerStart ? FATAL : LOG,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("could not load DH parameters file: %s",
      SSLerrmessage(ERR_get_error()))));
  return ((void*)0);
 }


 if (DH_check(dh, &codes) == 0)
 {
  ereport(isServerStart ? FATAL : LOG,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("invalid DH parameters: %s",
      SSLerrmessage(ERR_get_error()))));
  return ((void*)0);
 }
 if (codes & DH_CHECK_P_NOT_PRIME)
 {
  ereport(isServerStart ? FATAL : LOG,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("invalid DH parameters: p is not prime")));
  return ((void*)0);
 }
 if ((codes & DH_NOT_SUITABLE_GENERATOR) &&
  (codes & DH_CHECK_P_NOT_SAFE_PRIME))
 {
  ereport(isServerStart ? FATAL : LOG,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("invalid DH parameters: neither suitable generator or safe prime")));
  return ((void*)0);
 }

 return dh;
}
