
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_10__ {scalar_t__ mydest; } ;
struct TYPE_9__ {scalar_t__ strategy; int portalPos; scalar_t__ atEnd; int atStart; } ;
typedef TYPE_1__* Portal ;
typedef int FetchDirection ;
typedef TYPE_2__ DestReceiver ;


 int Assert (int) ;
 scalar_t__ DestNone ;
 int DoPortalRewind (TYPE_1__*) ;
 int ERROR ;

 long FETCH_ALL ;



 int LONG_MAX ;
 TYPE_2__* None_Receiver ;
 scalar_t__ PORTAL_ONE_MOD_WITH ;
 scalar_t__ PORTAL_ONE_RETURNING ;
 scalar_t__ PORTAL_ONE_SELECT ;
 scalar_t__ PORTAL_UTIL_SELECT ;
 int PortalRunSelect (TYPE_1__*,int,long,TYPE_2__*) ;
 int elog (int ,char*) ;

__attribute__((used)) static uint64
DoPortalRunFetch(Portal portal,
     FetchDirection fdirection,
     long count,
     DestReceiver *dest)
{
 bool forward;

 Assert(portal->strategy == PORTAL_ONE_SELECT ||
     portal->strategy == PORTAL_ONE_RETURNING ||
     portal->strategy == PORTAL_ONE_MOD_WITH ||
     portal->strategy == PORTAL_UTIL_SELECT);

 switch (fdirection)
 {
  case 129:
   if (count < 0)
   {
    fdirection = 130;
    count = -count;
   }

   break;
  case 130:
   if (count < 0)
   {
    fdirection = 129;
    count = -count;
   }

   break;
  case 131:
   if (count > 0)
   {
    if ((uint64) (count - 1) <= portal->portalPos / 2 ||
     portal->portalPos >= (uint64) LONG_MAX)
    {
     DoPortalRewind(portal);
     if (count > 1)
      PortalRunSelect(portal, 1, count - 1,
          None_Receiver);
    }
    else
    {
     long pos = (long) portal->portalPos;

     if (portal->atEnd)
      pos++;
     if (count <= pos)
      PortalRunSelect(portal, 0, pos - count + 1,
          None_Receiver);
     else if (count > pos + 1)
      PortalRunSelect(portal, 1, count - pos - 1,
          None_Receiver);
    }
    return PortalRunSelect(portal, 1, 1L, dest);
   }
   else if (count < 0)
   {







    PortalRunSelect(portal, 1, FETCH_ALL, None_Receiver);
    if (count < -1)
     PortalRunSelect(portal, 0, -count - 1, None_Receiver);
    return PortalRunSelect(portal, 0, 1L, dest);
   }
   else
   {


    DoPortalRewind(portal);
    return PortalRunSelect(portal, 1, 0L, dest);
   }
   break;
  case 128:
   if (count > 0)
   {



    if (count > 1)
     PortalRunSelect(portal, 1, count - 1, None_Receiver);
    return PortalRunSelect(portal, 1, 1L, dest);
   }
   else if (count < 0)
   {




    if (count < -1)
     PortalRunSelect(portal, 0, -count - 1, None_Receiver);
    return PortalRunSelect(portal, 0, 1L, dest);
   }
   else
   {


    fdirection = 129;
   }
   break;
  default:
   elog(ERROR, "bogus direction");
   break;
 }





 forward = (fdirection == 129);




 if (count == 0)
 {
  bool on_row;


  on_row = (!portal->atStart && !portal->atEnd);

  if (dest->mydest == DestNone)
  {

   return on_row ? 1 : 0;
  }
  else
  {







   if (on_row)
   {
    PortalRunSelect(portal, 0, 1L, None_Receiver);

    count = 1;
    forward = 1;
   }
  }
 }




 if (!forward && count == FETCH_ALL && dest->mydest == DestNone)
 {
  uint64 result = portal->portalPos;

  if (result > 0 && !portal->atEnd)
   result--;
  DoPortalRewind(portal);
  return result;
 }

 return PortalRunSelect(portal, forward, count, dest);
}
