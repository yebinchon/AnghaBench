
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TJCS_CMYK ;
 int TJCS_YCCK ;
 int TJCS_YCbCr ;
 char** csName ;
 int snprintf (char*,int,char*,char*,char*) ;
 char** subNameLong ;

char *formatName(int subsamp, int cs, char *buf)
{
  if (cs == TJCS_YCbCr)
    return (char *)subNameLong[subsamp];
  else if (cs == TJCS_YCCK || cs == TJCS_CMYK) {
    snprintf(buf, 80, "%s %s", csName[cs], subNameLong[subsamp]);
    return buf;
  } else
    return (char *)csName[cs];
}
