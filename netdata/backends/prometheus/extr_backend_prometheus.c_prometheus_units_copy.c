
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int isalnum (char) ;
 void* simple_hash (char const*) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline char *prometheus_units_copy(char *d, const char *s, size_t usable, int showoldunits) {
    const char *sorig = s;
    char *ret = d;
    size_t n;


    if (unlikely(showoldunits)) {
  static struct {
   const char *newunit;
   uint32_t hash;
   const char *oldunit;
  } units[] = {
      {"KiB/s", 0, "kilobytes/s"}
    , {"MiB/s", 0, "MB/s"}
    , {"GiB/s", 0, "GB/s"}
    , {"KiB" , 0, "KB"}
    , {"MiB" , 0, "MB"}
    , {"GiB" , 0, "GB"}
    , {"inodes" , 0, "Inodes"}
    , {"percentage" , 0, "percent"}
    , {"faults/s" , 0, "page faults/s"}
    , {"KiB/operation", 0, "kilobytes per operation"}
    , {"milliseconds/operation", 0, "ms per operation"}
    , {((void*)0), 0, ((void*)0)}
  };
  static int initialized = 0;
  int i;

  if(unlikely(!initialized)) {
   for (i = 0; units[i].newunit; i++)
    units[i].hash = simple_hash(units[i].newunit);
   initialized = 1;
  }

  uint32_t hash = simple_hash(s);
  for(i = 0; units[i].newunit ; i++) {
   if(unlikely(hash == units[i].hash && !strcmp(s, units[i].newunit))) {

    s=units[i].oldunit;
    sorig = s;
    break;
   }
  }
    }
    *d++ = '_';
    for(n = 1; *s && n < usable ; d++, s++, n++) {
        register char c = *s;

        if(!isalnum(c)) *d = '_';
        else *d = c;
    }

    if(n == 2 && sorig[0] == '%') {
        n = 0;
        d = ret;
        s = "_percent";
        for( ; *s && n < usable ; n++) *d++ = *s++;
    }
    else if(n > 3 && sorig[n-3] == '/' && sorig[n-2] == 's') {
        n = n - 2;
        d -= 2;
        s = "_persec";
        for( ; *s && n < usable ; n++) *d++ = *s++;
    }

    *d = '\0';

    return ret;
}
