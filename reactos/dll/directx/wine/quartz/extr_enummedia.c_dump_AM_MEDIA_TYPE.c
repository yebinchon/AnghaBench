
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int formattype; int subtype; int majortype; } ;
typedef TYPE_1__ AM_MEDIA_TYPE ;


 int TRACE (char*,int ,int ,int ) ;
 int qzdebugstr_guid (int *) ;

void dump_AM_MEDIA_TYPE(const AM_MEDIA_TYPE * pmt)
{
    if (!pmt)
        return;
    TRACE("\t%s\n\t%s\n\t...\n\t%s\n", qzdebugstr_guid(&pmt->majortype), qzdebugstr_guid(&pmt->subtype), qzdebugstr_guid(&pmt->formattype));
}
