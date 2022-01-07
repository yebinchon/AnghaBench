
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_stat_t ;
struct magic_set {int flags; int mode; } ;
struct TYPE_2__ {int st_mode; } ;
struct buffer {TYPE_1__ st; } ;
typedef int php_stream ;
typedef int php_socket_t ;
typedef int file_pushbuf_t ;


 int BINTEST ;
 int MAGIC_DEBUG ;
 int MAGIC_MIME_ENCODING ;
 int MAGIC_MIME_TYPE ;
 int MAGIC_NO_CHECK_APPTYPE ;
 int MAGIC_NO_CHECK_CDF ;
 int MAGIC_NO_CHECK_COMPRESS ;
 int MAGIC_NO_CHECK_ELF ;
 int MAGIC_NO_CHECK_ENCODING ;
 int MAGIC_NO_CHECK_JSON ;
 int MAGIC_NO_CHECK_SOFT ;
 int MAGIC_NO_CHECK_TAR ;
 int MAGIC_NO_CHECK_TEXT ;
 int PHP_STREAM_AS_FD ;
 int SUCCESS ;
 int buffer_fini (struct buffer*) ;
 int buffer_init (struct buffer*,int,int *,void const*,size_t) ;
 scalar_t__ checkdone (struct magic_set*,int*) ;
 int efree (char*) ;
 int file_ascmagic (struct magic_set*,struct buffer*,int) ;
 int file_default (struct magic_set*,size_t) ;
 int file_encoding (struct magic_set*,struct buffer*,int *,int ,char const**,char const**,char const**) ;
 int file_is_json (struct magic_set*,struct buffer*) ;
 int file_is_tar (struct magic_set*,struct buffer*) ;
 int file_os2_apptype (struct magic_set*,char const*,struct buffer*) ;
 char* file_pop_buffer (struct magic_set*,int *) ;
 int file_printf (struct magic_set*,char*,...) ;
 int * file_push_buffer (struct magic_set*) ;
 int file_softmagic (struct magic_set*,struct buffer*,int *,int *,int ,int) ;
 int file_trycdf (struct magic_set*,struct buffer*) ;
 int file_tryelf (struct magic_set*,struct buffer*) ;
 int file_zmagic (struct magic_set*,struct buffer*,char const*) ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 int php_stream_cast (int *,int ,void**,int ) ;
 int stderr ;

int
file_buffer(struct magic_set *ms, php_stream *stream, zend_stat_t *st,
    const char *inname,
    const void *buf, size_t nb)
{
 int m = 0, rv = 0, looks_text = 0;
 const char *code = ((void*)0);
 const char *code_mime = "binary";
 const char *def = "data";
 const char *ftype = ((void*)0);
 char *rbuf = ((void*)0);
 struct buffer b;
 int fd = -1;

 if (stream) {



  int _fd;

  int _ret = php_stream_cast(stream, PHP_STREAM_AS_FD, (void **)&_fd, 0);
  if (SUCCESS == _ret) {
   fd = (int)_fd;
  }
 }

 buffer_init(&b, fd, st, buf, nb);
 ms->mode = b.st.st_mode;

 if (nb == 0) {
  def = "empty";
  goto simple;
 } else if (nb == 1) {
  def = "very short file (no magic)";
  goto simple;
 }

 if ((ms->flags & MAGIC_NO_CHECK_ENCODING) == 0) {
  looks_text = file_encoding(ms, &b, ((void*)0), 0,
      &code, &code_mime, &ftype);
 }
 if ((ms->flags & MAGIC_NO_CHECK_TAR) == 0) {
  m = file_is_tar(ms, &b);
  if ((ms->flags & MAGIC_DEBUG) != 0)
   (void)fprintf(stderr, "[try tar %d]\n", m);
  if (m) {
   if (checkdone(ms, &rv))
    goto done;
  }
 }


 if ((ms->flags & MAGIC_NO_CHECK_JSON) == 0) {
  m = file_is_json(ms, &b);
  if ((ms->flags & MAGIC_DEBUG) != 0)
   (void)fprintf(stderr, "[try json %d]\n", m);
  if (m) {
   if (checkdone(ms, &rv))
    goto done;
  }
 }


 if ((ms->flags & MAGIC_NO_CHECK_CDF) == 0) {
  m = file_trycdf(ms, &b);
  if ((ms->flags & MAGIC_DEBUG) != 0)
   (void)fprintf(stderr, "[try cdf %d]\n", m);
  if (m) {
   if (checkdone(ms, &rv))
    goto done;
  }
 }
 if ((ms->flags & MAGIC_NO_CHECK_SOFT) == 0) {
  m = file_softmagic(ms, &b, ((void*)0), ((void*)0), BINTEST, looks_text);
  if ((ms->flags & MAGIC_DEBUG) != 0)
   (void)fprintf(stderr, "[try softmagic %d]\n", m);
  if (m == 1 && rbuf) {
   if (file_printf(ms, "%s", rbuf) == -1)
    goto done;
  }
  if (m) {
   if (checkdone(ms, &rv))
    goto done;
  }
 }


 if ((ms->flags & MAGIC_NO_CHECK_TEXT) == 0) {

  m = file_ascmagic(ms, &b, looks_text);
  if ((ms->flags & MAGIC_DEBUG) != 0)
   (void)fprintf(stderr, "[try ascmagic %d]\n", m);
  if (m) {
   goto done;
  }
 }

simple:

 if (m == 0) {
  m = 1;
  rv = file_default(ms, nb);
  if (rv == 0)
   if (file_printf(ms, "%s", def) == -1)
    rv = -1;
 }
 done:
 if ((ms->flags & MAGIC_MIME_ENCODING) != 0) {
  if (ms->flags & MAGIC_MIME_TYPE)
   if (file_printf(ms, "; charset=") == -1)
    rv = -1;
  if (file_printf(ms, "%s", code_mime) == -1)
   rv = -1;
 }



 efree(rbuf);
 buffer_fini(&b);
 if (rv)
  return rv;

 return m;
}
