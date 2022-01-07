
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_id {int id; } ;
struct buffer {int dummy; } ;


 int SID_SIZE ;
 int buf_write_prepend (struct buffer*,int ,int ) ;

__attribute__((used)) static inline bool
session_id_write_prepend(const struct session_id *sid, struct buffer *buf)
{
    return buf_write_prepend(buf, sid->id, SID_SIZE);
}
