
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool need_event(unsigned short event,
         unsigned short next,
         unsigned short prev)
{
 return (unsigned short)(next - event - 1) < (unsigned short)(next - prev);
}
