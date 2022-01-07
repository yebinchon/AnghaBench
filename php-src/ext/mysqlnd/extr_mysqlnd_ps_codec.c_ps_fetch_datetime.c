
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_ulong ;
typedef scalar_t__ zend_uchar ;
typedef int uint32_t ;
typedef int t ;
struct st_mysqlnd_time {unsigned int year; unsigned int month; unsigned int day; unsigned int hour; unsigned int minute; unsigned int second; int second_part; void* time_type; scalar_t__ neg; } ;
struct TYPE_3__ {int decimals; } ;
typedef TYPE_1__ MYSQLND_FIELD ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,char*) ;
 int DBG_VOID_RETURN ;
 void* MYSQLND_TIMESTAMP_DATETIME ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int memset (struct st_mysqlnd_time*,int ,int) ;
 int mnd_sprintf (char**,int ,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,...) ;
 int mnd_sprintf_free (char*) ;
 int php_mysqlnd_net_field_length (scalar_t__ const**) ;
 int pow (int,int ) ;
 scalar_t__ sint2korr (scalar_t__ const*) ;
 scalar_t__ sint4korr (scalar_t__ const*) ;

__attribute__((used)) static void
ps_fetch_datetime(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
 struct st_mysqlnd_time t;
 zend_ulong length;
 char * value;
 DBG_ENTER("ps_fetch_datetime");

 if ((length = php_mysqlnd_net_field_length(row))) {
  const zend_uchar * to = *row;

  t.time_type = MYSQLND_TIMESTAMP_DATETIME;
  t.neg = 0;

  t.year = (unsigned int) sint2korr(to);
  t.month = (unsigned int) to[2];
  t.day = (unsigned int) to[3];

  if (length > 4) {
   t.hour = (unsigned int) to[4];
   t.minute = (unsigned int) to[5];
   t.second = (unsigned int) to[6];
  } else {
   t.hour = t.minute = t.second= 0;
  }
  t.second_part = (length > 7) ? (zend_ulong) sint4korr(to+7) : 0;

  (*row)+= length;
 } else {
  memset(&t, 0, sizeof(t));
  t.time_type = MYSQLND_TIMESTAMP_DATETIME;
 }

    if (field->decimals > 0 && field->decimals < 7) {
     length = mnd_sprintf(
            &value,
            0,
            "%04u-%02u-%02u %02u:%02u:%02u.%0*u",
            t.year,
            t.month,
            t.day,
            t.hour,
            t.minute,
            t.second,
            field->decimals,
            (uint32_t) (t.second_part / pow(10, 6 - field->decimals))
        );
    } else {
     length = mnd_sprintf(&value, 0, "%04u-%02u-%02u %02u:%02u:%02u", t.year, t.month, t.day, t.hour, t.minute, t.second);
    }

 DBG_INF_FMT("%s", value);
 ZVAL_STRINGL(zv, value, length);
 mnd_sprintf_free(value);
 DBG_VOID_RETURN;
}
