
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int PING_STRING_SIZE ;
 int buf_string_match (struct buffer const*,int ,int ) ;
 int ping_string ;

__attribute__((used)) static inline bool
is_ping_msg(const struct buffer *buf)
{
    return buf_string_match(buf, ping_string, PING_STRING_SIZE);
}
