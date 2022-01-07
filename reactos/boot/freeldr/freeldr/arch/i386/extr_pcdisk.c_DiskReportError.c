
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef scalar_t__ BOOLEAN ;


 int lReportError ;

LONG DiskReportError(BOOLEAN bShowError)
{

    if (bShowError) ++lReportError;
    else --lReportError;
    return lReportError;
}
