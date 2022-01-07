
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_com_dotnet_object ;
typedef int WORD ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int DISPID ;


 scalar_t__ FAILED (int ) ;
 int FAILURE ;
 int efree (char*) ;
 int php_com_do_invoke_by_id (int *,int ,int ,int *,int,int *,int ,int) ;
 int php_com_get_id_of_name (int *,char*,size_t,int *) ;
 int php_com_throw_exception (int ,char*) ;
 int php_win32_error_msg_free (char*) ;
 char* php_win32_error_to_msg (int ) ;
 int spprintf (char**,int ,char*,char*,char*) ;

int php_com_do_invoke(php_com_dotnet_object *obj, char *name, size_t namelen,
  WORD flags, VARIANT *v, int nargs, zval *args, int allow_noarg)
{
 DISPID dispid;
 HRESULT hr;
 char *msg = ((void*)0);

 hr = php_com_get_id_of_name(obj, name, namelen, &dispid);

 if (FAILED(hr)) {
  char *winerr = php_win32_error_to_msg(hr);
  spprintf(&msg, 0, "Unable to lookup `%s': %s", name, winerr);
  php_win32_error_msg_free(winerr);
  php_com_throw_exception(hr, msg);
  efree(msg);
  return FAILURE;
 }

 return php_com_do_invoke_by_id(obj, dispid, flags, v, nargs, args, 0, allow_noarg);
}
