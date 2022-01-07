
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;
typedef int FILE ;


 int stbi__start_callbacks (int *,int *,void*) ;
 int stbi__stdio_callbacks ;

__attribute__((used)) static void stbi__start_file(stbi__context *s, FILE *f)
{
   stbi__start_callbacks(s, &stbi__stdio_callbacks, (void *) f);
}
