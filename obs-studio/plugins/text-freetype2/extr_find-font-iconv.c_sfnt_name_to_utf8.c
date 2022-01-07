
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ iconv_t ;
struct TYPE_3__ {size_t string_len; scalar_t__ string; int language_id; int encoding_id; int platform_id; } ;
typedef TYPE_1__ FT_SfntName ;


 int LOG_DEBUG ;
 int LOG_WARNING ;
 int blog (int ,char*,...) ;
 char* bstrdup (char*) ;
 scalar_t__ errno ;
 char* get_code_page_for_font (int ,int ,int ) ;
 size_t iconv (scalar_t__,char**,size_t*,char**,size_t*) ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char const*) ;

char *sfnt_name_to_utf8(FT_SfntName *sfnt_name)
{
 const char *charset = get_code_page_for_font(sfnt_name->platform_id,
           sfnt_name->encoding_id,
           sfnt_name->language_id);
 char utf8[256];
 char *conv_in, *conv_out;
 size_t in_len, out_len;

 if (!charset) {
  blog(LOG_DEBUG,
       "invalid character set found, "
       "platform_id: %d, encoding_id: %d, "
       "language_id: %d",
       sfnt_name->platform_id, sfnt_name->encoding_id,
       sfnt_name->language_id);
  return ((void*)0);
 }

 iconv_t ic = iconv_open("UTF-8", charset);
 if (ic == (iconv_t)-1) {
  blog(LOG_DEBUG,
       "couldn't intialize font code page "
       "conversion:  '%s' to 'utf-8': errno = %d",
       charset, (int)errno);
  return ((void*)0);
 }

 conv_in = (char *)sfnt_name->string;
 conv_out = utf8;
 in_len = sfnt_name->string_len;
 out_len = 256;

 size_t n = iconv(ic, &conv_in, &in_len, &conv_out, &out_len);
 if (n == (size_t)-1) {
  blog(LOG_WARNING, "couldn't convert font name text: errno = %d",
       (int)errno);
  iconv_close(ic);
  return ((void*)0);
 }

 iconv_close(ic);
 *conv_out = 0;
 return bstrdup(utf8);
}
