
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGN_SIZE ;

__attribute__((used)) static size_t bytes_to_blocks(size_t bytes)
{
    return (bytes + ALIGN_SIZE - 1) / ALIGN_SIZE;
}
