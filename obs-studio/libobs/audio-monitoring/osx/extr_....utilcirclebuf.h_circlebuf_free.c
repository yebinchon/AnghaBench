
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circlebuf {int data; } ;


 int bfree (int ) ;
 int memset (struct circlebuf*,int ,int) ;

__attribute__((used)) static inline void circlebuf_free(struct circlebuf *cb)
{
 bfree(cb->data);
 memset(cb, 0, sizeof(struct circlebuf));
}
