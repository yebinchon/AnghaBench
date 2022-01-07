
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int OCC_STRING_SIZE ;
 int buf_string_match_head (struct buffer const*,int ,int ) ;
 int occ_magic ;

__attribute__((used)) static inline bool
is_occ_msg(const struct buffer *buf)
{
    return buf_string_match_head(buf, occ_magic, OCC_STRING_SIZE);
}
