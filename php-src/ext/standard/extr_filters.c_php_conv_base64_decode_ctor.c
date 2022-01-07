
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ php_conv_dtor_func ;
typedef scalar_t__ php_conv_convert_func ;
struct TYPE_4__ {scalar_t__ dtor; scalar_t__ convert_op; } ;
struct TYPE_5__ {scalar_t__ eos; scalar_t__ ustat; scalar_t__ urem_nbits; scalar_t__ urem; TYPE_1__ _super; } ;
typedef TYPE_2__ php_conv_base64_decode ;


 int SUCCESS ;
 scalar_t__ php_conv_base64_decode_convert ;
 scalar_t__ php_conv_base64_decode_dtor ;

__attribute__((used)) static int php_conv_base64_decode_ctor(php_conv_base64_decode *inst)
{
 inst->_super.convert_op = (php_conv_convert_func) php_conv_base64_decode_convert;
 inst->_super.dtor = (php_conv_dtor_func) php_conv_base64_decode_dtor;

 inst->urem = 0;
 inst->urem_nbits = 0;
 inst->ustat = 0;
 inst->eos = 0;
 return SUCCESS;
}
