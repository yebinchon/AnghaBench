
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offset ;
typedef int length ;
typedef int XLogReaderState ;
typedef int StringInfo ;
typedef scalar_t__ Pointer ;
typedef scalar_t__ OffsetNumber ;


 scalar_t__ XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetDataLen (int *) ;
 int appendStringInfo (int ,char*,scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;

void
generic_desc(StringInfo buf, XLogReaderState *record)
{
 Pointer ptr = XLogRecGetData(record),
    end = ptr + XLogRecGetDataLen(record);

 while (ptr < end)
 {
  OffsetNumber offset,
     length;

  memcpy(&offset, ptr, sizeof(offset));
  ptr += sizeof(offset);
  memcpy(&length, ptr, sizeof(length));
  ptr += sizeof(length);
  ptr += length;

  if (ptr < end)
   appendStringInfo(buf, "offset %u, length %u; ", offset, length);
  else
   appendStringInfo(buf, "offset %u, length %u", offset, length);
 }

 return;
}
