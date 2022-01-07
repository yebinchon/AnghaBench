
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int php_stream_filter ;
typedef int php_stream_bucket_brigade ;
typedef int php_stream_bucket ;
typedef int php_stream ;
struct TYPE_3__ {size_t stub_len; char* stub; int filtername; int cd; } ;
typedef TYPE_1__ php_convert_filter ;
typedef int php_conv_err_t ;


 int E_WARNING ;
 int FAILURE ;





 int SUCCESS ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char const*,size_t) ;
 int pefree (char*,int) ;
 char* pemalloc (size_t,int) ;
 char* perealloc (char*,size_t,int) ;
 int php_conv_convert (int ,char const**,size_t*,char**,size_t*) ;
 int php_error_docref (int *,int ,char*,int ) ;
 int php_stream_bucket_append (int *,int *) ;
 int * php_stream_bucket_new (int *,char*,size_t,int,int) ;

__attribute__((used)) static int strfilter_convert_append_bucket(
  php_convert_filter *inst,
  php_stream *stream, php_stream_filter *filter,
  php_stream_bucket_brigade *buckets_out,
  const char *ps, size_t buf_len, size_t *consumed,
  int persistent)
{
 php_conv_err_t err;
 php_stream_bucket *new_bucket;
 char *out_buf = ((void*)0);
 size_t out_buf_size;
 char *pd;
 const char *pt;
 size_t ocnt, icnt, tcnt;
 size_t initial_out_buf_size;

 if (ps == ((void*)0)) {
  initial_out_buf_size = 64;
  icnt = 1;
 } else {
  initial_out_buf_size = buf_len;
  icnt = buf_len;
 }

 out_buf_size = ocnt = initial_out_buf_size;
 out_buf = pemalloc(out_buf_size, persistent);

 pd = out_buf;

 if (inst->stub_len > 0) {
  pt = inst->stub;
  tcnt = inst->stub_len;

  while (tcnt > 0) {
   err = php_conv_convert(inst->cd, &pt, &tcnt, &pd, &ocnt);

   switch (err) {
    case 132:
     php_error_docref(((void*)0), E_WARNING, "stream filter (%s): invalid byte sequence", inst->filtername);
     goto out_failure;

    case 131:
     if (ps != ((void*)0)) {
      if (icnt > 0) {
       if (inst->stub_len >= sizeof(inst->stub)) {
        php_error_docref(((void*)0), E_WARNING, "stream filter (%s): insufficient buffer", inst->filtername);
        goto out_failure;
       }
       inst->stub[inst->stub_len++] = *(ps++);
       icnt--;
       pt = inst->stub;
       tcnt = inst->stub_len;
      } else {
       tcnt = 0;
       break;
      }
     }
     break;

    case 129:
     php_error_docref(((void*)0), E_WARNING, "stream filter (%s): unexpected end of stream", inst->filtername);
     goto out_failure;

    case 130: {
     char *new_out_buf;
     size_t new_out_buf_size;

     new_out_buf_size = out_buf_size << 1;

     if (new_out_buf_size < out_buf_size) {

      if (((void*)0) == (new_bucket = php_stream_bucket_new(stream, out_buf, (out_buf_size - ocnt), 1, persistent))) {
       goto out_failure;
      }

      php_stream_bucket_append(buckets_out, new_bucket);

      out_buf_size = ocnt = initial_out_buf_size;
      out_buf = pemalloc(out_buf_size, persistent);
      pd = out_buf;
     } else {
      new_out_buf = perealloc(out_buf, new_out_buf_size, persistent);
      pd = new_out_buf + (pd - out_buf);
      ocnt += (new_out_buf_size - out_buf_size);
      out_buf = new_out_buf;
      out_buf_size = new_out_buf_size;
     }
    } break;

    case 128:
     php_error_docref(((void*)0), E_WARNING, "stream filter (%s): unknown error", inst->filtername);
     goto out_failure;

    default:
     break;
   }
  }
  memmove(inst->stub, pt, tcnt);
  inst->stub_len = tcnt;
 }

 while (icnt > 0) {
  err = ((ps == ((void*)0) ? php_conv_convert(inst->cd, ((void*)0), ((void*)0), &pd, &ocnt):
    php_conv_convert(inst->cd, &ps, &icnt, &pd, &ocnt)));
  switch (err) {
   case 132:
    php_error_docref(((void*)0), E_WARNING, "stream filter (%s): invalid byte sequence", inst->filtername);
    goto out_failure;

   case 131:
    if (ps != ((void*)0)) {
     if (icnt > sizeof(inst->stub)) {
      php_error_docref(((void*)0), E_WARNING, "stream filter (%s): insufficient buffer", inst->filtername);
      goto out_failure;
     }
     memcpy(inst->stub, ps, icnt);
     inst->stub_len = icnt;
     ps += icnt;
     icnt = 0;
    } else {
     php_error_docref(((void*)0), E_WARNING, "stream filter (%s): unexpected octet values", inst->filtername);
     goto out_failure;
    }
    break;

   case 130: {
    char *new_out_buf;
    size_t new_out_buf_size;

    new_out_buf_size = out_buf_size << 1;

    if (new_out_buf_size < out_buf_size) {

     if (((void*)0) == (new_bucket = php_stream_bucket_new(stream, out_buf, (out_buf_size - ocnt), 1, persistent))) {
      goto out_failure;
     }

     php_stream_bucket_append(buckets_out, new_bucket);

     out_buf_size = ocnt = initial_out_buf_size;
     out_buf = pemalloc(out_buf_size, persistent);
     pd = out_buf;
    } else {
     new_out_buf = perealloc(out_buf, new_out_buf_size, persistent);
     pd = new_out_buf + (pd - out_buf);
     ocnt += (new_out_buf_size - out_buf_size);
     out_buf = new_out_buf;
     out_buf_size = new_out_buf_size;
    }
   } break;

   case 128:
    php_error_docref(((void*)0), E_WARNING, "stream filter (%s): unknown error", inst->filtername);
    goto out_failure;

   default:
    if (ps == ((void*)0)) {
     icnt = 0;
    }
    break;
  }
 }

 if (out_buf_size > ocnt) {
  if (((void*)0) == (new_bucket = php_stream_bucket_new(stream, out_buf, (out_buf_size - ocnt), 1, persistent))) {
   goto out_failure;
  }
  php_stream_bucket_append(buckets_out, new_bucket);
 } else {
  pefree(out_buf, persistent);
 }
 *consumed += buf_len - icnt;

 return SUCCESS;

out_failure:
 pefree(out_buf, persistent);
 return FAILURE;
}
