
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;
typedef int enum_func_status ;
typedef int MYSQLND_STATS ;
typedef int MYSQLND_ROW_BUFFER ;
typedef int MYSQLND_FIELD ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (int ) ;
 int php_mysqlnd_rowp_read_text_protocol_aux (int *,int *,unsigned int const,int const* const,int const,int * const) ;

enum_func_status
php_mysqlnd_rowp_read_text_protocol_c(MYSQLND_ROW_BUFFER * row_buffer, zval * fields,
           const unsigned int field_count, const MYSQLND_FIELD * const fields_metadata,
           const zend_bool as_int_or_float, MYSQLND_STATS * const stats)
{
 enum_func_status ret;
 DBG_ENTER("php_mysqlnd_rowp_read_text_protocol_c");
 ret = php_mysqlnd_rowp_read_text_protocol_aux(row_buffer, fields, field_count, fields_metadata, as_int_or_float, stats);
 DBG_RETURN(ret);
}
