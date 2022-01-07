
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ pg_uuid_t ;


 int UUID_LEN ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int
uuid_internal_cmp(const pg_uuid_t *arg1, const pg_uuid_t *arg2)
{
 return memcmp(arg1->data, arg2->data, UUID_LEN);
}
