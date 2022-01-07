
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (int,int ) ;
 scalar_t__ snprintf (char*,int ,char*,...) ;

__attribute__((used)) static int mg_hexdump_n(const void *buf, int len, char *dst, int dst_len,
                        int offset) {
  const unsigned char *p = (const unsigned char *) buf;
  char ascii[17] = "";
  int i, idx, n = 0;

  for (i = 0; i < len; i++) {
    idx = i % 16;
    if (idx == 0) {
      if (i > 0) n += snprintf(dst + n, MAX(dst_len - n, 0), "  %s\n", ascii);
      n += snprintf(dst + n, MAX(dst_len - n, 0), "%04x ", i + offset);
    }
    if (dst_len - n < 0) {
      return n;
    }
    n += snprintf(dst + n, MAX(dst_len - n, 0), " %02x", p[i]);
    ascii[idx] = p[i] < 0x20 || p[i] > 0x7e ? '.' : p[i];
    ascii[idx + 1] = '\0';
  }

  while (i++ % 16) n += snprintf(dst + n, MAX(dst_len - n, 0), "%s", "   ");
  n += snprintf(dst + n, MAX(dst_len - n, 0), "  %s\n", ascii);

  return n;
}
