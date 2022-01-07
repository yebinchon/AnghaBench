
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int XLOG_LOGICAL_MESSAGE ;
 int XLR_INFO_MASK ;

const char *
logicalmsg_identify(uint8 info)
{
 if ((info & ~XLR_INFO_MASK) == XLOG_LOGICAL_MESSAGE)
  return "MESSAGE";

 return ((void*)0);
}
