
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;


 int Min (int ,int ) ;
 scalar_t__ XLogRecPtrIsInvalid (int ) ;

__attribute__((used)) static XLogRecPtr
MinXLogRecPtr(XLogRecPtr a, XLogRecPtr b)
{
 if (XLogRecPtrIsInvalid(a))
  return b;
 else if (XLogRecPtrIsInvalid(b))
  return a;
 else
  return Min(a, b);
}
