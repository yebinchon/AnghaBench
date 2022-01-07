
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PGFunction ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ dlsym (void*,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char*) ;
 char* expand_dynamic_library_name (char const*) ;
 void* internal_load_library (char*) ;
 int pfree (char*) ;

PGFunction
load_external_function(const char *filename, const char *funcname,
        bool signalNotFound, void **filehandle)
{
 char *fullname;
 void *lib_handle;
 PGFunction retval;


 fullname = expand_dynamic_library_name(filename);


 lib_handle = internal_load_library(fullname);


 if (filehandle)
  *filehandle = lib_handle;


 retval = (PGFunction) dlsym(lib_handle, funcname);

 if (retval == ((void*)0) && signalNotFound)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("could not find function \"%s\" in file \"%s\"",
      funcname, fullname)));

 pfree(fullname);
 return retval;
}
