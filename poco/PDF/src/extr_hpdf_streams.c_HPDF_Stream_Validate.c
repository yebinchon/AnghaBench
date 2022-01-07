
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sig_bytes; } ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_STATUS ;


 int HPDF_FALSE ;
 scalar_t__ HPDF_STREAM_SIG_BYTES ;
 int HPDF_TRUE ;

HPDF_STATUS
HPDF_Stream_Validate (HPDF_Stream stream)
{
    if (!stream || stream->sig_bytes != HPDF_STREAM_SIG_BYTES)
        return HPDF_FALSE;
    else
        return HPDF_TRUE;
}
