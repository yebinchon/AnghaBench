
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int encode_null_callback(const char *buffer, size_t size, void *data)
{
    (void)buffer;
    (void)size;
    (void)data;
    return 0;
}
