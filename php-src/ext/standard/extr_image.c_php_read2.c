
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;
typedef int a ;


 int php_stream_read (int *,char*,int) ;

__attribute__((used)) static unsigned short php_read2(php_stream * stream)
{
 unsigned char a[2];


 if((php_stream_read(stream, (char *) a, sizeof(a))) < sizeof(a)) return 0;

 return (((unsigned short)a[0]) << 8) + ((unsigned short)a[1]);
}
