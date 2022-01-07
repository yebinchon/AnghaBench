
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ internal_xact; } ;


 int ERRCODE_WARNING ;
 int SPICleanup () ;
 int WARNING ;
 int _SPI_connected ;
 TYPE_1__* _SPI_current ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

void
AtEOXact_SPI(bool isCommit)
{

 if (_SPI_current && _SPI_current->internal_xact)
  return;

 if (isCommit && _SPI_connected != -1)
  ereport(WARNING,
    (errcode(ERRCODE_WARNING),
     errmsg("transaction left non-empty SPI stack"),
     errhint("Check for missing \"SPI_finish\" calls.")));

 SPICleanup();
}
