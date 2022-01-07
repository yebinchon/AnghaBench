
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct buffer {int dummy; } ;


 int buf_write (struct buffer*,int *,int) ;
 int htons (int ) ;

__attribute__((used)) static inline bool
buf_write_u16(struct buffer *dest, int data)
{
    uint16_t u16 = htons((uint16_t) data);
    return buf_write(dest, &u16, sizeof(uint16_t));
}
