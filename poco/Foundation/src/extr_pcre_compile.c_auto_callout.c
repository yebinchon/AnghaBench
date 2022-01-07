
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcre_uchar ;
struct TYPE_3__ {int const* start_pattern; } ;
typedef TYPE_1__ compile_data ;


 int LINK_SIZE ;
 int OP_CALLOUT ;
 int PUT (int *,int,int) ;

__attribute__((used)) static pcre_uchar *
auto_callout(pcre_uchar *code, const pcre_uchar *ptr, compile_data *cd)
{
*code++ = OP_CALLOUT;
*code++ = 255;
PUT(code, 0, (int)(ptr - cd->start_pattern));
PUT(code, LINK_SIZE, 0);
return code + 2 * LINK_SIZE;
}
