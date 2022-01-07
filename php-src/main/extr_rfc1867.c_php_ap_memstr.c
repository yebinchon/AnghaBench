__attribute__((used)) static void *php_ap_memstr(char *haystack, int haystacklen, char *needle, int needlen, int partial)
{
 int len = haystacklen;
 char *ptr = haystack;


 while( (ptr = memchr(ptr, needle[0], len)) ) {


  len = haystacklen - (ptr - (char *)haystack);


  if (memcmp(needle, ptr, needlen < len ? needlen : len) == 0 && (partial || len >= needlen)) {
   break;
  }


  ptr++; len--;
 }

 return ptr;
}
