
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circlebuf {int dummy; } ;


 int memset (struct circlebuf*,int ,int) ;

__attribute__((used)) static inline void circlebuf_init(struct circlebuf *cb)
{
 memset(cb, 0, sizeof(struct circlebuf));
}
