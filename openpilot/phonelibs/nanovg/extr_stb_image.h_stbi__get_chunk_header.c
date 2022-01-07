
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* type; void* length; } ;
typedef TYPE_1__ stbi__pngchunk ;
typedef int stbi__context ;


 void* stbi__get32be (int *) ;

__attribute__((used)) static stbi__pngchunk stbi__get_chunk_header(stbi__context *s)
{
   stbi__pngchunk c;
   c.length = stbi__get32be(s);
   c.type = stbi__get32be(s);
   return c;
}
