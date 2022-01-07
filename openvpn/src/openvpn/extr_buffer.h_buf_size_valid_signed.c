
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const BUF_SIZE_MAX ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline bool
buf_size_valid_signed(const int size)
{
    return likely(size >= -BUF_SIZE_MAX) && likely(size < BUF_SIZE_MAX);
}
