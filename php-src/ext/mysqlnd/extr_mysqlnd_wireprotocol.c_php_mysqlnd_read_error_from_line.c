
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char zend_uchar ;
typedef int enum_func_status ;


 unsigned int CR_UNKNOWN_ERROR ;
 int DBG_ENTER (char*) ;
 int DBG_RETURN (int ) ;
 int FAIL ;
 size_t MIN (int,int) ;
 size_t const MYSQLND_SQLSTATE_LENGTH ;
 int memcpy (char*,char const*,size_t const) ;
 unsigned int uint2korr (char const*) ;
 char const* unknown_sqlstate ;

__attribute__((used)) static enum_func_status
php_mysqlnd_read_error_from_line(const zend_uchar * const buf, const size_t buf_len,
         char *error, const size_t error_buf_len,
         unsigned int *error_no, char *sqlstate)
{
 const zend_uchar *p = buf;
 size_t error_msg_len = 0;

 DBG_ENTER("php_mysqlnd_read_error_from_line");

 *error_no = CR_UNKNOWN_ERROR;
 memcpy(sqlstate, unknown_sqlstate, MYSQLND_SQLSTATE_LENGTH);

 if (buf_len > 2) {
  *error_no = uint2korr(p);
  p+= 2;




  if (*p == '#') {
   ++p;
   if ((buf_len - (p - buf)) >= MYSQLND_SQLSTATE_LENGTH) {
    memcpy(sqlstate, p, MYSQLND_SQLSTATE_LENGTH);
    p+= MYSQLND_SQLSTATE_LENGTH;
   } else {
    goto end;
   }
  }
  if ((buf_len - (p - buf)) > 0) {
   error_msg_len = MIN((int)((buf_len - (p - buf))), (int) (error_buf_len - 1));
   memcpy(error, p, error_msg_len);
  }
 }
end:
 sqlstate[MYSQLND_SQLSTATE_LENGTH] = '\0';
 error[error_msg_len]= '\0';

 DBG_RETURN(FAIL);
}
