
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct msghdr {TYPE_1__* msg_iov; } ;
typedef int ser_context ;
struct TYPE_2__ {int iov_base; int iov_len; } ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int accounted_emalloc (int ,int *) ;
 int memcpy (int ,int ,int ) ;
 int zend_tmp_string_release (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static void from_zval_write_iov_array_aux(zval *elem, unsigned i, void **args, ser_context *ctx)
{
 struct msghdr *msg = args[0];
 zend_string *str, *tmp_str;

 str = zval_get_tmp_string(elem, &tmp_str);

 msg->msg_iov[i - 1].iov_base = accounted_emalloc(ZSTR_LEN(str), ctx);
 msg->msg_iov[i - 1].iov_len = ZSTR_LEN(str);
 memcpy(msg->msg_iov[i - 1].iov_base, ZSTR_VAL(str), ZSTR_LEN(str));

 zend_tmp_string_release(tmp_str);
}
