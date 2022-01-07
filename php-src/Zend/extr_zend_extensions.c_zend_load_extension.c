
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DL_HANDLE ;


 char* DL_ERROR () ;
 int DL_LOAD (char const*) ;
 int FAILURE ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int zend_load_extension_handle (int ,char const*) ;

int zend_load_extension(const char *path)
{
 fprintf(stderr, "Extensions are not supported on this platform.\n");




 return FAILURE;

}
