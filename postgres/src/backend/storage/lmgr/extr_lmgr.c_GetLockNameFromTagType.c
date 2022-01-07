
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16 ;


 size_t LOCKTAG_LAST_TYPE ;
 char const** LockTagTypeNames ;

const char *
GetLockNameFromTagType(uint16 locktag_type)
{
 if (locktag_type > LOCKTAG_LAST_TYPE)
  return "???";
 return LockTagTypeNames[locktag_type];
}
