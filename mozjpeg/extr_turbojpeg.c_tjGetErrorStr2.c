
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* errStr; scalar_t__ isInstanceError; } ;
typedef TYPE_1__ tjinstance ;
typedef scalar_t__ tjhandle ;


 scalar_t__ FALSE ;
 char* errStr ;

char *tjGetErrorStr2(tjhandle handle)
{
  tjinstance *this = (tjinstance *)handle;

  if (this && this->isInstanceError) {
    this->isInstanceError = FALSE;
    return this->errStr;
  } else
    return errStr;
}
