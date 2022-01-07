
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_6__ {int * tuptable; scalar_t__ processed; } ;
struct TYPE_5__ {scalar_t__ mydest; } ;
typedef int Portal ;
typedef int FetchDirection ;
typedef TYPE_1__ DestReceiver ;


 scalar_t__ DestSPI ;
 int ERROR ;
 int PortalIsValid (int ) ;
 scalar_t__ PortalRunFetch (int ,int ,long,TYPE_1__*) ;
 scalar_t__ SPI_processed ;
 int * SPI_tuptable ;
 scalar_t__ _SPI_begin_call (int) ;
 scalar_t__ _SPI_checktuples () ;
 TYPE_3__* _SPI_current ;
 int _SPI_end_call (int) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
_SPI_cursor_operation(Portal portal, FetchDirection direction, long count,
       DestReceiver *dest)
{
 uint64 nfetched;


 if (!PortalIsValid(portal))
  elog(ERROR, "invalid portal in SPI cursor operation");


 if (_SPI_begin_call(1) < 0)
  elog(ERROR, "SPI cursor operation called while not connected");


 SPI_processed = 0;
 SPI_tuptable = ((void*)0);
 _SPI_current->processed = 0;
 _SPI_current->tuptable = ((void*)0);


 nfetched = PortalRunFetch(portal,
         direction,
         count,
         dest);
 _SPI_current->processed = nfetched;

 if (dest->mydest == DestSPI && _SPI_checktuples())
  elog(ERROR, "consistency check on SPI tuple count failed");


 SPI_processed = _SPI_current->processed;
 SPI_tuptable = _SPI_current->tuptable;


 _SPI_current->tuptable = ((void*)0);


 _SPI_end_call(1);
}
