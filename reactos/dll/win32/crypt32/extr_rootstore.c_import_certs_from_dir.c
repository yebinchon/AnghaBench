
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef char* LPCSTR ;
typedef int HCERTSTORE ;
typedef int DIR ;
typedef scalar_t__ BOOL ;


 int CryptMemFree (char*) ;
 int ERR (char*) ;
 scalar_t__ FALSE ;
 int FIXME (char*) ;
 int TRACE (char*,int ,int ) ;
 scalar_t__ TRUE ;
 int check_buffer_resize (char**,size_t*,size_t) ;
 int closedir (int *) ;
 int debugstr_a (char*) ;
 scalar_t__ import_certs_from_path (char*,int ,scalar_t__) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static BOOL import_certs_from_dir(LPCSTR path, HCERTSTORE store)
{
    FIXME("not implemented without readdir available\n");
    return FALSE;

}
