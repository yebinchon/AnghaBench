
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int php_conv_err_t ;
typedef scalar_t__ php_conv_dtor_func ;
typedef scalar_t__ php_conv_convert_func ;
struct TYPE_4__ {scalar_t__ dtor; scalar_t__ convert_op; } ;
struct TYPE_5__ {unsigned int line_ccnt; unsigned int line_len; char const* lbchars; size_t lbchars_len; int lbchars_dup; int persistent; scalar_t__ erem_len; TYPE_1__ _super; } ;
typedef TYPE_2__ php_conv_base64_encode ;


 int PHP_CONV_ERR_SUCCESS ;
 char const* pestrdup (char const*,int) ;
 scalar_t__ php_conv_base64_encode_convert ;
 scalar_t__ php_conv_base64_encode_dtor ;

__attribute__((used)) static php_conv_err_t php_conv_base64_encode_ctor(php_conv_base64_encode *inst, unsigned int line_len, const char *lbchars, size_t lbchars_len, int lbchars_dup, int persistent)
{
 inst->_super.convert_op = (php_conv_convert_func) php_conv_base64_encode_convert;
 inst->_super.dtor = (php_conv_dtor_func) php_conv_base64_encode_dtor;
 inst->erem_len = 0;
 inst->line_ccnt = line_len;
 inst->line_len = line_len;
 if (lbchars != ((void*)0)) {
  inst->lbchars = (lbchars_dup ? pestrdup(lbchars, persistent) : lbchars);
  inst->lbchars_len = lbchars_len;
 } else {
  inst->lbchars = ((void*)0);
 }
 inst->lbchars_dup = lbchars_dup;
 inst->persistent = persistent;
 return PHP_CONV_ERR_SUCCESS;
}
