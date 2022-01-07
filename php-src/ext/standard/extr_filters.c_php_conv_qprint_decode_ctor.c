
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dtor; scalar_t__ convert_op; } ;
struct TYPE_5__ {char const* lbchars; size_t lbchars_len; int lbchars_dup; int persistent; scalar_t__ lb_cnt; scalar_t__ lb_ptr; scalar_t__ next_char; scalar_t__ scan_stat; TYPE_1__ _super; } ;
typedef TYPE_2__ php_conv_qprint_decode ;
typedef int php_conv_err_t ;
typedef scalar_t__ php_conv_dtor_func ;
typedef scalar_t__ php_conv_convert_func ;


 int PHP_CONV_ERR_SUCCESS ;
 char const* pestrdup (char const*,int) ;
 scalar_t__ php_conv_qprint_decode_convert ;
 scalar_t__ php_conv_qprint_decode_dtor ;

__attribute__((used)) static php_conv_err_t php_conv_qprint_decode_ctor(php_conv_qprint_decode *inst, const char *lbchars, size_t lbchars_len, int lbchars_dup, int persistent)
{
 inst->_super.convert_op = (php_conv_convert_func) php_conv_qprint_decode_convert;
 inst->_super.dtor = (php_conv_dtor_func) php_conv_qprint_decode_dtor;
 inst->scan_stat = 0;
 inst->next_char = 0;
 inst->lb_ptr = inst->lb_cnt = 0;
 if (lbchars != ((void*)0)) {
  inst->lbchars = (lbchars_dup ? pestrdup(lbchars, persistent) : lbchars);
  inst->lbchars_len = lbchars_len;
 } else {
  inst->lbchars = ((void*)0);
  inst->lbchars_len = 0;
 }
 inst->lbchars_dup = lbchars_dup;
 inst->persistent = persistent;
 return PHP_CONV_ERR_SUCCESS;
}
