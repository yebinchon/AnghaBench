
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int context; int old_header; TYPE_1__* sdl; } ;
typedef TYPE_2__ sdlCtx ;
struct TYPE_4__ {char* source; } ;


 scalar_t__ IS_UNDEF ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_NEW_STR (int *,int ) ;
 int Z_STRLEN_P (int *) ;
 scalar_t__ Z_STRVAL (int ) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 int memcpy (scalar_t__,char*,int) ;
 int php_libxml_switch_context (int *,int *) ;
 int php_stream_context_from_zval (int *,int) ;
 int * php_stream_context_get_option (int ,char*,char*) ;
 int php_stream_context_set_option (int ,char*,char*,int *) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;
 int zend_string_alloc (int,int ) ;
 int zval_ptr_dtor (int *) ;

void sdl_set_uri_credentials(sdlCtx *ctx, char *uri)
{
 char *s;
 size_t l1, l2;
 zval context;
 zval *header = ((void*)0);


 s = strstr(ctx->sdl->source, "://");
 if (!s) return;
 s = strchr(s+3, '/');
 l1 = s ? (size_t)(s - ctx->sdl->source) : strlen(ctx->sdl->source);
 s = strstr((char*)uri, "://");
 if (!s) return;
 s = strchr(s+3, '/');
 l2 = s ? (size_t)(s - (char*)uri) : strlen((char*)uri);
 if (l1 != l2) {

  if (l1 > 11 &&
      ctx->sdl->source[4] == ':' &&
      ctx->sdl->source[l1-3] == ':' &&
      ctx->sdl->source[l1-2] == '8' &&
      ctx->sdl->source[l1-1] == '0') {
   l1 -= 3;
  }
  if (l2 > 11 &&
      uri[4] == ':' &&
      uri[l2-3] == ':' &&
      uri[l2-2] == '8' &&
      uri[l2-1] == '0') {
   l2 -= 3;
  }

  if (l1 > 13 &&
      ctx->sdl->source[4] == 's' &&
      ctx->sdl->source[l1-4] == ':' &&
      ctx->sdl->source[l1-3] == '4' &&
      ctx->sdl->source[l1-2] == '4' &&
      ctx->sdl->source[l1-1] == '3') {
   l1 -= 4;
  }
  if (l2 > 13 &&
      uri[4] == 's' &&
      uri[l2-4] == ':' &&
      uri[l2-3] == '4' &&
      uri[l2-2] == '4' &&
      uri[l2-1] == '3') {
   l2 -= 4;
  }
 }
 if (l1 != l2 || memcmp(ctx->sdl->source, uri, l1) != 0) {

  php_libxml_switch_context(((void*)0), &context);
  php_libxml_switch_context(&context, ((void*)0));
  if (Z_TYPE(context) != IS_UNDEF) {
   zval *context_ptr = &context;
   ctx->context = php_stream_context_from_zval(context_ptr, 1);

   if (ctx->context &&
       (header = php_stream_context_get_option(ctx->context, "http", "header")) != ((void*)0)) {
    s = strstr(Z_STRVAL_P(header), "Authorization: Basic");
    if (s && (s == Z_STRVAL_P(header) || *(s-1) == '\n' || *(s-1) == '\r')) {
     char *rest = strstr(s, "\r\n");
     if (rest) {
      zval new_header;

      rest += 2;
      ZVAL_NEW_STR(&new_header, zend_string_alloc(Z_STRLEN_P(header) - (rest - s), 0));
      memcpy(Z_STRVAL(new_header), Z_STRVAL_P(header), s - Z_STRVAL_P(header));
      memcpy(Z_STRVAL(new_header) + (s - Z_STRVAL_P(header)), rest, Z_STRLEN_P(header) - (rest - Z_STRVAL_P(header)) + 1);
      ZVAL_COPY(&ctx->old_header, header);
      php_stream_context_set_option(ctx->context, "http", "header", &new_header);
      zval_ptr_dtor(&new_header);
     }
    }
   }
  }
 }
}
