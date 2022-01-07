
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int ser_context ;
struct TYPE_3__ {char* member_0; int member_1; int member_5; int member_4; int member_3; int member_2; } ;
typedef TYPE_1__ field_descriptor ;


 int from_zval_write_aggregation (int const*,char*,TYPE_1__ const*,int *) ;




void from_zval_write_msghdr_send(const zval *container, char *msghdr_c, ser_context *ctx)
{
 static const field_descriptor descriptors[] = {
   {"name", sizeof("name"), 0, 0, 128, 0},
   {"iov", sizeof("iov"), 0, 0, 129, 0},
   {"control", sizeof("control"), 0, 0, 130, 0},
   {0}
 };

 from_zval_write_aggregation(container, msghdr_c, descriptors, ctx);
}
