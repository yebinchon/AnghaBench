
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_id {int id; } ;


 int SID_SIZE ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static inline bool
session_id_equal(const struct session_id *sid1,
                 const struct session_id *sid2)
{
    return !memcmp(sid1->id, sid2->id, SID_SIZE);
}
