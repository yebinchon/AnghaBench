
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ len; int * data; } ;


 scalar_t__ likely (int) ;

__attribute__((used)) static inline bool
buf_valid(const struct buffer *buf)
{
    return likely(buf->data != ((void*)0)) && likely(buf->len >= 0);
}
