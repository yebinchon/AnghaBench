
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int Assert (int) ;
 int appendBinaryStringInfo (int ,scalar_t__,int) ;
 scalar_t__ scanorig ;

void
plpgsql_append_source_text(StringInfo buf,
         int startlocation, int endlocation)
{
 Assert(startlocation <= endlocation);
 appendBinaryStringInfo(buf, scanorig + startlocation,
         endlocation - startlocation);
}
