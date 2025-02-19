
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef scalar_t__ zend_uchar ;
typedef int t ;
struct st_mysqlnd_time {unsigned int year; unsigned int month; unsigned int day; void* time_type; scalar_t__ second; scalar_t__ minute; scalar_t__ hour; scalar_t__ second_part; scalar_t__ neg; int member_0; } ;
typedef int MYSQLND_FIELD ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,char*) ;
 int DBG_VOID_RETURN ;
 void* MYSQLND_TIMESTAMP_DATE ;
 int ZVAL_STRINGL (int *,char*,scalar_t__) ;
 int memset (struct st_mysqlnd_time*,int ,int) ;
 scalar_t__ mnd_sprintf (char**,int ,char*,unsigned int,unsigned int,unsigned int) ;
 int mnd_sprintf_free (char*) ;
 scalar_t__ php_mysqlnd_net_field_length (scalar_t__ const**) ;
 scalar_t__ sint2korr (scalar_t__ const*) ;

__attribute__((used)) static void
ps_fetch_date(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
 struct st_mysqlnd_time t = {0};
 zend_ulong length;
 char * value;
 DBG_ENTER("ps_fetch_date");

 if ((length = php_mysqlnd_net_field_length(row))) {
  const zend_uchar * to = *row;

  t.time_type = MYSQLND_TIMESTAMP_DATE;
  t.neg = 0;

  t.second_part = t.hour = t.minute = t.second = 0;

  t.year = (unsigned int) sint2korr(to);
  t.month = (unsigned int) to[2];
  t.day = (unsigned int) to[3];

  (*row)+= length;
 } else {
  memset(&t, 0, sizeof(t));
  t.time_type = MYSQLND_TIMESTAMP_DATE;
 }

 length = mnd_sprintf(&value, 0, "%04u-%02u-%02u", t.year, t.month, t.day);

 DBG_INF_FMT("%s", value);
 ZVAL_STRINGL(zv, value, length);
 mnd_sprintf_free(value);
 DBG_VOID_RETURN;
}
