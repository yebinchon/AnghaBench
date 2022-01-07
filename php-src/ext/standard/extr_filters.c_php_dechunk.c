
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int chunk_size; } ;
typedef TYPE_1__ php_chunked_filter_data ;
 int memmove (char*,char*,int) ;

__attribute__((used)) static size_t php_dechunk(char *buf, size_t len, php_chunked_filter_data *data)
{
 char *p = buf;
 char *end = p + len;
 char *out = buf;
 size_t out_len = 0;

 while (p < end) {
  switch (data->state) {
   case 129:
    data->chunk_size = 0;
   case 133:
    while (p < end) {
     if (*p >= '0' && *p <= '9') {
      data->chunk_size = (data->chunk_size * 16) + (*p - '0');
     } else if (*p >= 'A' && *p <= 'F') {
      data->chunk_size = (data->chunk_size * 16) + (*p - 'A' + 10);
     } else if (*p >= 'a' && *p <= 'f') {
      data->chunk_size = (data->chunk_size * 16) + (*p - 'a' + 10);
     } else if (data->state == 129) {
      data->state = 134;
      break;
     } else {
      data->state = 131;
      break;
     }
     data->state = 133;
     p++;
    }
    if (data->state == 134) {
     continue;
    } else if (p == end) {
     return out_len;
    }
   case 131:

    while (p < end && *p != '\r' && *p != '\n') {
     p++;
    }
    if (p == end) {
     return out_len;
    }
   case 132:
    if (*p == '\r') {
     p++;
     if (p == end) {
      data->state = 130;
      return out_len;
     }
    }
   case 130:
    if (*p == '\n') {
     p++;
     if (data->chunk_size == 0) {

      data->state = 128;
      continue;
     } else if (p == end) {
      data->state = 137;
      return out_len;
     }
    } else {
     data->state = 134;
     continue;
    }
   case 137:
    if ((size_t) (end - p) >= data->chunk_size) {
     if (p != out) {
      memmove(out, p, data->chunk_size);
     }
     out += data->chunk_size;
     out_len += data->chunk_size;
     p += data->chunk_size;
     if (p == end) {
      data->state = 136;
      return out_len;
     }
    } else {
     if (p != out) {
      memmove(out, p, end - p);
     }
     data->chunk_size -= end - p;
     data->state=137;
     out_len += end - p;
     return out_len;
    }
   case 136:
    if (*p == '\r') {
     p++;
     if (p == end) {
      data->state = 135;
      return out_len;
     }
    }
   case 135:
    if (*p == '\n') {
     p++;
     data->state = 129;
     continue;
    } else {
     data->state = 134;
     continue;
    }
   case 128:

    p = end;
    continue;
   case 134:
    if (p != out) {
     memmove(out, p, end - p);
    }
    out_len += end - p;
    return out_len;
  }
 }
 return out_len;
}
