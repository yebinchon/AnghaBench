
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AmWalReceiverProcess () ;
 int ERROR ;
 int OPEN_DATASYNC_FLAG ;
 int OPEN_SYNC_FLAG ;
 int PG_O_DIRECT ;





 int XLogIsNeeded () ;
 int elog (int ,char*,int) ;
 int enableFsync ;

__attribute__((used)) static int
get_sync_bit(int method)
{
 int o_direct_flag = 0;


 if (!enableFsync)
  return 0;
 if (!XLogIsNeeded() && !AmWalReceiverProcess())
  o_direct_flag = PG_O_DIRECT;

 switch (method)
 {






  case 131:
  case 130:
  case 132:
   return 0;
  default:

   elog(ERROR, "unrecognized wal_sync_method: %d", method);
   return 0;
 }
}
