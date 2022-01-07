
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct session_id {int id; } ;
struct TYPE_2__ {int id; } ;


 int SID_SIZE ;
 scalar_t__ memcmp (int ,int *,int ) ;
 TYPE_1__ x_session_id_zero ;

__attribute__((used)) static inline bool
session_id_defined(const struct session_id *sid1)
{
    return memcmp(sid1->id, &x_session_id_zero.id, SID_SIZE) != 0;
}
