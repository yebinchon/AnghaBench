
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int dummy; } ;


 int buf_write (struct buffer*,int *,int) ;

__attribute__((used)) static inline bool
buf_write_u8(struct buffer *dest, int data)
{
    uint8_t u8 = (uint8_t) data;
    return buf_write(dest, &u8, sizeof(uint8_t));
}
