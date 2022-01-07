
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ pg_uuid_t ;


 int UUID_LEN ;
 int memcpy (scalar_t__*,int ,int ) ;
 scalar_t__ pg_bswap64 (scalar_t__) ;

__attribute__((used)) static double
uuid_2_double(const pg_uuid_t *u)
{
 uint64 uu[2];
 const double two64 = 18446744073709551616.0;


 memcpy(uu, u->data, UUID_LEN);







 uu[0] = pg_bswap64(uu[0]);
 uu[1] = pg_bswap64(uu[1]);
 return (double) uu[0] + (double) uu[1] / two64;
}
