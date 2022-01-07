
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static char *LSCRIU_Error_File_Name(char *pchFile, int max_len)
{
    const char *pchDefaultSocketPath = "/tmp/";
    const char *pchDefaultLogFileName = "lsws_error.log";
    snprintf(pchFile, max_len, "%s%s", pchDefaultSocketPath,
             pchDefaultLogFileName);
    return pchFile;
}
