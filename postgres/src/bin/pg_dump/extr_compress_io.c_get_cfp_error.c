
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ compressedfp; } ;
typedef TYPE_1__ cfp ;


 int Z_ERRNO ;
 int errno ;
 char* gzerror (scalar_t__,int*) ;
 char const* strerror (int ) ;

const char *
get_cfp_error(cfp *fp)
{
 return strerror(errno);
}
