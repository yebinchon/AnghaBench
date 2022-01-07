
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mule_mblen (unsigned char const*) ;

int
pg_mic_mblen(const unsigned char *mbstr)
{
 return pg_mule_mblen(mbstr);
}
