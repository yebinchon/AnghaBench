
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* to_unicode_fn ) (TYPE_1__*,int ) ;} ;
typedef int HPDF_UNICODE ;
typedef int HPDF_UINT16 ;
typedef TYPE_1__* HPDF_Encoder ;


 int stub1 (TYPE_1__*,int ) ;

HPDF_UNICODE
HPDF_Encoder_ToUnicode (HPDF_Encoder encoder,
                         HPDF_UINT16 code)
{
    return encoder->to_unicode_fn (encoder, code);
}
