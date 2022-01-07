
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bipbuf_t ;



__attribute__((used)) static size_t bipbuf_sizeof(const unsigned int size)
{
    return sizeof(bipbuf_t) + size;
}
