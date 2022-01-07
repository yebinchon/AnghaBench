
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {int zip_err; char* str; int sys_err; } ;


 size_t ZIP_ER_MEMORY ;


 char const** _zip_err_str ;
 int* _zip_err_type ;
 int _zip_error_fini (struct zip_error*) ;
 int _zip_nerr_str ;
 scalar_t__ malloc (scalar_t__) ;
 int sprintf (char*,char*,...) ;
 char* strerror (int ) ;
 scalar_t__ strlen (char const*) ;
 char* zError (int ) ;

const char *
_zip_error_strerror(struct zip_error *err)
{
    const char *zs, *ss;
    char buf[128], *s;

    _zip_error_fini(err);

    if (err->zip_err < 0 || err->zip_err >= _zip_nerr_str) {
 sprintf(buf, "Unknown error %d", err->zip_err);
 zs = ((void*)0);
 ss = buf;
    }
    else {
 zs = _zip_err_str[err->zip_err];

 switch (_zip_err_type[err->zip_err]) {
 case 129:
     ss = strerror(err->sys_err);
     break;

 case 128:
     ss = zError(err->sys_err);
     break;

 default:
     ss = ((void*)0);
 }
    }

    if (ss == ((void*)0))
 return zs;
    else {
 if ((s=(char *)malloc(strlen(ss)
         + (zs ? strlen(zs)+2 : 0) + 1)) == ((void*)0))
     return _zip_err_str[ZIP_ER_MEMORY];

 sprintf(s, "%s%s%s",
  (zs ? zs : ""),
  (zs ? ": " : ""),
  ss);
 err->str = s;

 return s;
    }
}
