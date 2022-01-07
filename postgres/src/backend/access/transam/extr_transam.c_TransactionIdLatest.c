
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 scalar_t__ TransactionIdPrecedes (int ,int const) ;

TransactionId
TransactionIdLatest(TransactionId mainxid,
     int nxids, const TransactionId *xids)
{
 TransactionId result;
 result = mainxid;
 while (--nxids >= 0)
 {
  if (TransactionIdPrecedes(result, xids[nxids]))
   result = xids[nxids];
 }
 return result;
}
