
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_uchar ;
struct TYPE_3__ {scalar_t__ decimals; } ;
typedef TYPE_1__ MYSQLND_FIELD ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,float) ;
 int DBG_VOID_RETURN ;
 scalar_t__ NOT_FIXED_DEC ;
 int ZVAL_DOUBLE (int *,double) ;
 int float4get (float,int const*) ;
 double mysql_float_to_double (float,int) ;

__attribute__((used)) static void
ps_fetch_float(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
 float fval;
 double dval;
 DBG_ENTER("ps_fetch_float");
 float4get(fval, *row);
 (*row)+= 4;
 DBG_INF_FMT("value=%f", fval);





 dval = mysql_float_to_double(fval, (field->decimals >= 31) ? -1 : (int)field->decimals);

 ZVAL_DOUBLE(zv, dval);
 DBG_VOID_RETURN;
}
