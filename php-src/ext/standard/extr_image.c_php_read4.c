
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;
typedef int a ;


 int php_stream_read (int *,char*,int) ;

__attribute__((used)) static unsigned int php_read4(php_stream * stream)
{
 unsigned char a[4];


 if ((php_stream_read(stream, (char*)a, sizeof(a))) != sizeof(a)) return 0;

 return (((unsigned int)a[0]) << 24)
      + (((unsigned int)a[1]) << 16)
      + (((unsigned int)a[2]) << 8)
      + (((unsigned int)a[3]));
}
