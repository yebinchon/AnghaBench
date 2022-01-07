
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCWCHAR ;
typedef int FILE ;
typedef int BOOL ;


 int FALSE ;
 int * _wfopen (scalar_t__,char*) ;
 int fclose (int *) ;
 int * logfile ;

BOOL kull_m_output_file(PCWCHAR file)
{
 BOOL status = FALSE;
 FILE * newlog = ((void*)0);

 if(file)
#pragma warning(push)
#pragma warning(disable:4996)
 newlog = _wfopen(file, L"a");
#pragma warning(pop)
 if(newlog || !file)
 {
  if(logfile)
   fclose(logfile);
  logfile = newlog;
 }
 return (!file || (file && logfile));
}
