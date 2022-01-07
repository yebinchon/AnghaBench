
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct buffer {int dummy; } ;


 int buf_write (struct buffer*,int *,int) ;
 int htonl (int ) ;

__attribute__((used)) static inline bool
buf_write_u32(struct buffer *dest, int data)
{
    uint32_t u32 = htonl((uint32_t) data);
    return buf_write(dest, &u32, sizeof(uint32_t));
}
