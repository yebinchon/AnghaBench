
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stbi_uc ;
struct TYPE_4__ {int * read; } ;
struct TYPE_5__ {int * img_buffer_original_end; int * img_buffer_end; int * img_buffer_original; int * img_buffer; scalar_t__ read_from_callbacks; TYPE_1__ io; } ;
typedef TYPE_2__ stbi__context ;



__attribute__((used)) static void stbi__start_mem(stbi__context *s, stbi_uc const *buffer, int len)
{
   s->io.read = ((void*)0);
   s->read_from_callbacks = 0;
   s->img_buffer = s->img_buffer_original = (stbi_uc *) buffer;
   s->img_buffer_end = s->img_buffer_original_end = (stbi_uc *) buffer+len;
}
