
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t const BUF_SIZE_MAX ;
 int likely (int) ;

__attribute__((used)) static inline bool
buf_size_valid(const size_t size)
{
    return likely(size < BUF_SIZE_MAX);
}
