
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XLogRecPtr ;



__attribute__((used)) static int
cmp_lsn(const void *a, const void *b)
{
 XLogRecPtr lsn1 = *((const XLogRecPtr *) a);
 XLogRecPtr lsn2 = *((const XLogRecPtr *) b);

 if (lsn1 > lsn2)
  return -1;
 else if (lsn1 == lsn2)
  return 0;
 else
  return 1;
}
