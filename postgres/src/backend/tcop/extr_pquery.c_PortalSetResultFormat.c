
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_5__ {scalar_t__* formats; int portalContext; TYPE_1__* tupDesc; } ;
struct TYPE_4__ {int natts; } ;
typedef TYPE_2__* Portal ;


 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

void
PortalSetResultFormat(Portal portal, int nFormats, int16 *formats)
{
 int natts;
 int i;


 if (portal->tupDesc == ((void*)0))
  return;
 natts = portal->tupDesc->natts;
 portal->formats = (int16 *)
  MemoryContextAlloc(portal->portalContext,
         natts * sizeof(int16));
 if (nFormats > 1)
 {

  if (nFormats != natts)
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("bind message has %d result formats but query has %d columns",
       nFormats, natts)));
  memcpy(portal->formats, formats, natts * sizeof(int16));
 }
 else if (nFormats > 0)
 {

  int16 format1 = formats[0];

  for (i = 0; i < natts; i++)
   portal->formats[i] = format1;
 }
 else
 {

  for (i = 0; i < natts; i++)
   portal->formats[i] = 0;
 }
}
