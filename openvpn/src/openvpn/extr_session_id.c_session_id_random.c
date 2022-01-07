
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_id {int id; } ;


 int SID_SIZE ;
 int prng_bytes (int ,int ) ;

void
session_id_random(struct session_id *sid)
{
    prng_bytes(sid->id, SID_SIZE);
}
