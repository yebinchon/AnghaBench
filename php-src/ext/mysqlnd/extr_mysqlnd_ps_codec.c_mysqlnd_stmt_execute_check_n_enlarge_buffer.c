
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;
typedef int enum_func_status ;


 int FAIL ;
 int PASS ;
 int memcpy (int *,int *,size_t const) ;
 int mnd_efree (int *) ;
 int * mnd_emalloc (size_t) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_execute_check_n_enlarge_buffer(zend_uchar **buf, zend_uchar **p, size_t * buf_len, zend_uchar * const provided_buffer, size_t needed_bytes)
{
 const size_t overalloc = 5;
 size_t left = (*buf_len - (*p - *buf));

 if (left < (needed_bytes + overalloc)) {
  const size_t offset = *p - *buf;
  zend_uchar *tmp_buf;
  *buf_len = offset + needed_bytes + overalloc;
  tmp_buf = mnd_emalloc(*buf_len);
  if (!tmp_buf) {
   return FAIL;
  }
  memcpy(tmp_buf, *buf, offset);
  if (*buf != provided_buffer) {
   mnd_efree(*buf);
  }
  *buf = tmp_buf;

  *p = *buf + offset;
 }
 return PASS;
}
