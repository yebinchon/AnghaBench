
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int code_page; int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int WORD ;
typedef int VARIANT ;
struct TYPE_10__ {scalar_t__ cNamedArgs; scalar_t__ cArgs; } ;
struct TYPE_9__ {int bstrHelpFile; int bstrDescription; int bstrSource; int member_0; } ;
typedef int HRESULT ;
typedef TYPE_2__ EXCEPINFO ;
typedef TYPE_3__ DISPPARAMS ;
typedef int DISPID ;






 scalar_t__ FAILED (int) ;
 int IDispatch_Invoke (int ,int ,int *,int ,int ,TYPE_3__*,int *,TYPE_2__*,unsigned int*) ;
 int IID_NULL ;
 int LOCALE_SYSTEM_DEFAULT ;
 int PG (int ) ;
 int SysFreeString (int ) ;
 int V_DISPATCH (int *) ;
 int efree (char*) ;
 int html_errors ;
 char* php_com_olestring_to_string (int ,size_t*,int ) ;
 int php_com_throw_exception (int,char*) ;
 int php_win32_error_msg_free (char*) ;
 char* php_win32_error_to_msg (int) ;
 int spprintf (char**,int ,char*,...) ;

HRESULT php_com_invoke_helper(php_com_dotnet_object *obj, DISPID id_member,
  WORD flags, DISPPARAMS *disp_params, VARIANT *v, int silent, int allow_noarg)
{
 HRESULT hr;
 unsigned int arg_err;
 EXCEPINFO e = {0};

 hr = IDispatch_Invoke(V_DISPATCH(&obj->v), id_member,
  &IID_NULL, LOCALE_SYSTEM_DEFAULT, flags, disp_params, v, &e, &arg_err);

 if (silent == 0 && FAILED(hr)) {
  char *source = ((void*)0), *desc = ((void*)0), *msg = ((void*)0);
  size_t source_len, desc_len;

  switch (hr) {
   case 130:
    if (e.bstrSource) {
     source = php_com_olestring_to_string(e.bstrSource, &source_len, obj->code_page);
     SysFreeString(e.bstrSource);
    }
    if (e.bstrDescription) {
     desc = php_com_olestring_to_string(e.bstrDescription, &desc_len, obj->code_page);
     SysFreeString(e.bstrDescription);
    }
    if (PG(html_errors)) {
     spprintf(&msg, 0, "<b>Source:</b> %s<br/><b>Description:</b> %s",
      source ? source : "Unknown",
      desc ? desc : "Unknown");
    } else {
     spprintf(&msg, 0, "Source: %s\nDescription: %s",
      source ? source : "Unknown",
      desc ? desc : "Unknown");
    }
    if (desc) {
     efree(desc);
    }
    if (source) {
     efree(source);
    }
    if (e.bstrHelpFile) {
     SysFreeString(e.bstrHelpFile);
    }
    break;

   case 129:
   case 128:
    desc = php_win32_error_to_msg(hr);
    spprintf(&msg, 0, "Parameter %d: %s", arg_err, desc);
    php_win32_error_msg_free(desc);
    break;

   case 131:
    if ((disp_params->cArgs + disp_params->cNamedArgs == 0) && (allow_noarg == 1)) {



     msg = ((void*)0);
     break;
    }


   default:
    desc = php_win32_error_to_msg(hr);
    spprintf(&msg, 0, "Error [0x%08x] %s", hr, desc);
    php_win32_error_msg_free(desc);
    break;
  }

  if (msg) {
   php_com_throw_exception(hr, msg);
   efree(msg);
  }
 }

 return hr;
}
