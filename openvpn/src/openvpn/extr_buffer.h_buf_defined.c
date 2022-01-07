
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int * data; } ;



__attribute__((used)) static inline bool
buf_defined(const struct buffer *buf)
{
    return buf->data != ((void*)0);
}
