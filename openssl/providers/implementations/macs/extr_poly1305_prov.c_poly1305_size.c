
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t POLY1305_DIGEST_SIZE ;

__attribute__((used)) static size_t poly1305_size(void)
{
    return POLY1305_DIGEST_SIZE;
}
