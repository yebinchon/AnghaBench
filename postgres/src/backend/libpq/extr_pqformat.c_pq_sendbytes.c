
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendBinaryStringInfo (int ,char const*,int) ;

void
pq_sendbytes(StringInfo buf, const char *data, int datalen)
{

 appendBinaryStringInfo(buf, data, datalen);
}
