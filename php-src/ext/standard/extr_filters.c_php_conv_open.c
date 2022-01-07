
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_conv_qprint_encode ;
typedef int php_conv_qprint_decode ;
typedef int php_conv_base64_encode ;
typedef int php_conv_base64_decode ;
typedef char php_conv ;
typedef int HashTable ;


 int GET_BOOL_PROP (int const*,int,char*) ;
 int GET_STR_PROP (int const*,char*,size_t,char*,int ) ;
 int GET_UINT_PROP (int const*,unsigned int,char*) ;




 int PHP_CONV_QPRINT_OPT_BINARY ;
 int PHP_CONV_QPRINT_OPT_FORCE_ENCODE_FIRST ;
 int pefree (char*,int) ;
 char* pemalloc (int,int) ;
 char* pestrdup (char*,int ) ;
 int php_conv_base64_decode_ctor (int *) ;
 int php_conv_base64_encode_ctor (int *,unsigned int,char*,size_t,int,int) ;
 int php_conv_qprint_decode_ctor (int *,char*,size_t,int,int) ;
 int php_conv_qprint_encode_ctor (int *,unsigned int,char*,size_t,int,int,int) ;

__attribute__((used)) static php_conv *php_conv_open(int conv_mode, const HashTable *options, int persistent)
{


 php_conv *retval = ((void*)0);

 switch (conv_mode) {
  case 130: {
   unsigned int line_len = 0;
   char *lbchars = ((void*)0);
   size_t lbchars_len;

   if (options != ((void*)0)) {
    GET_STR_PROP(options, lbchars, lbchars_len, "line-break-chars", 0);
    GET_UINT_PROP(options, line_len, "line-length");
    if (line_len < 4) {
     if (lbchars != ((void*)0)) {
      pefree(lbchars, 0);
     }
     lbchars = ((void*)0);
    } else {
     if (lbchars == ((void*)0)) {
      lbchars = pestrdup("\r\n", 0);
      lbchars_len = 2;
     }
    }
   }
   retval = pemalloc(sizeof(php_conv_base64_encode), persistent);
   if (lbchars != ((void*)0)) {
    if (php_conv_base64_encode_ctor((php_conv_base64_encode *)retval, line_len, lbchars, lbchars_len, 1, persistent)) {
     if (lbchars != ((void*)0)) {
      pefree(lbchars, 0);
     }
     goto out_failure;
    }
    pefree(lbchars, 0);
   } else {
    if (php_conv_base64_encode_ctor((php_conv_base64_encode *)retval, 0, ((void*)0), 0, 0, persistent)) {
     goto out_failure;
    }
   }
  } break;

  case 131:
   retval = pemalloc(sizeof(php_conv_base64_decode), persistent);
   if (php_conv_base64_decode_ctor((php_conv_base64_decode *)retval)) {
    goto out_failure;
   }
   break;

  case 128: {
   unsigned int line_len = 0;
   char *lbchars = ((void*)0);
   size_t lbchars_len;
   int opts = 0;

   if (options != ((void*)0)) {
    int opt_binary = 0;
    int opt_force_encode_first = 0;

    GET_STR_PROP(options, lbchars, lbchars_len, "line-break-chars", 0);
    GET_UINT_PROP(options, line_len, "line-length");
    GET_BOOL_PROP(options, opt_binary, "binary");
    GET_BOOL_PROP(options, opt_force_encode_first, "force-encode-first");

    if (line_len < 4) {
     if (lbchars != ((void*)0)) {
      pefree(lbchars, 0);
     }
     lbchars = ((void*)0);
    } else {
     if (lbchars == ((void*)0)) {
      lbchars = pestrdup("\r\n", 0);
      lbchars_len = 2;
     }
    }
    opts |= (opt_binary ? PHP_CONV_QPRINT_OPT_BINARY : 0);
    opts |= (opt_force_encode_first ? PHP_CONV_QPRINT_OPT_FORCE_ENCODE_FIRST : 0);
   }
   retval = pemalloc(sizeof(php_conv_qprint_encode), persistent);
   if (lbchars != ((void*)0)) {
    if (php_conv_qprint_encode_ctor((php_conv_qprint_encode *)retval, line_len, lbchars, lbchars_len, 1, opts, persistent)) {
     pefree(lbchars, 0);
     goto out_failure;
    }
    pefree(lbchars, 0);
   } else {
    if (php_conv_qprint_encode_ctor((php_conv_qprint_encode *)retval, 0, ((void*)0), 0, 0, opts, persistent)) {
     goto out_failure;
    }
   }
  } break;

  case 129: {
   char *lbchars = ((void*)0);
   size_t lbchars_len;

   if (options != ((void*)0)) {

    GET_STR_PROP(options, lbchars, lbchars_len, "line-break-chars", 0);
   }

   retval = pemalloc(sizeof(php_conv_qprint_decode), persistent);
   if (lbchars != ((void*)0)) {
    if (php_conv_qprint_decode_ctor((php_conv_qprint_decode *)retval, lbchars, lbchars_len, 1, persistent)) {
     pefree(lbchars, 0);
     goto out_failure;
    }
    pefree(lbchars, 0);
   } else {
    if (php_conv_qprint_decode_ctor((php_conv_qprint_decode *)retval, ((void*)0), 0, 0, persistent)) {
     goto out_failure;
    }
   }
  } break;

  default:
   retval = ((void*)0);
   break;
 }
 return retval;

out_failure:
 if (retval != ((void*)0)) {
  pefree(retval, persistent);
 }
 return ((void*)0);
}
