
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ isbyte (int) ;
 int sscanf (char const*,char*,int*,int*,int*,int*,int*,...) ;

__attribute__((used)) static int parse_net(const char *spec, uint32_t *net, uint32_t *mask) {
  int n, a, b, c, d, slash = 32, len = 0;

  if ((sscanf(spec, "%d.%d.%d.%d/%d%n", &a, &b, &c, &d, &slash, &n) == 5 ||
       sscanf(spec, "%d.%d.%d.%d%n", &a, &b, &c, &d, &n) == 4) &&
      isbyte(a) && isbyte(b) && isbyte(c) && isbyte(d) && slash >= 0 &&
      slash < 33) {
    len = n;
    *net =
        ((uint32_t) a << 24) | ((uint32_t) b << 16) | ((uint32_t) c << 8) | d;
    *mask = slash ? 0xffffffffU << (32 - slash) : 0;
  }

  return len;
}
