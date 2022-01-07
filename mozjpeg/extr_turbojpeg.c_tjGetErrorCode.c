
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ warning; } ;
struct TYPE_4__ {TYPE_1__ jerr; } ;
typedef TYPE_2__ tjinstance ;
typedef scalar_t__ tjhandle ;


 int TJERR_FATAL ;
 int TJERR_WARNING ;

int tjGetErrorCode(tjhandle handle)
{
  tjinstance *this = (tjinstance *)handle;

  if (this && this->jerr.warning) return TJERR_WARNING;
  else return TJERR_FATAL;
}
