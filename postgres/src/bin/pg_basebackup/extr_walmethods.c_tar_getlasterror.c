
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* lasterror; } ;


 int errno ;
 char const* strerror (int ) ;
 TYPE_1__* tar_data ;

__attribute__((used)) static const char *
tar_getlasterror(void)
{




 if (tar_data->lasterror[0])
  return tar_data->lasterror;
 return strerror(errno);
}
