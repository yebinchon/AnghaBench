
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHAR_G (int ) ;
 char* hexChars ;
 int persist ;
 scalar_t__ safe_pemalloc (size_t,int,int,int ) ;

__attribute__((used)) static int phar_hex_str(const char *digest, size_t digest_len, char **signature)
{
 int pos = -1;
 size_t len = 0;

 *signature = (char*)safe_pemalloc(digest_len, 2, 1, PHAR_G(persist));

 for (; len < digest_len; ++len) {
  (*signature)[++pos] = hexChars[((const unsigned char *)digest)[len] >> 4];
  (*signature)[++pos] = hexChars[((const unsigned char *)digest)[len] & 0x0F];
 }
 (*signature)[++pos] = '\0';
 return pos;
}
