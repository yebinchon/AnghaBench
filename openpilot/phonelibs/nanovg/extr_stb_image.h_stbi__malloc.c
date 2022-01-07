
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* STBI_MALLOC (size_t) ;

__attribute__((used)) static void *stbi__malloc(size_t size)
{
    return STBI_MALLOC(size);
}
