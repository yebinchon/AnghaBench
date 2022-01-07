
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {size_t len; size_t size; char* buf; } ;


 scalar_t__ MBUF_REALLOC (char*,size_t) ;
 size_t MBUF_SIZE_MAX_HEADROOM ;
 size_t MBUF_SIZE_MULTIPLIER ;
 int assert (int) ;
 int memcpy (char*,void const*,size_t) ;
 int memmove (char*,char*,size_t) ;

size_t mbuf_insert(struct mbuf *a, size_t off, const void *buf, size_t len) {
  char *p = ((void*)0);

  assert(a != ((void*)0));
  assert(a->len <= a->size);
  assert(off <= a->len);


  if (~(size_t) 0 - (size_t) a->buf < len) return 0;

  if (a->len + len <= a->size) {
    memmove(a->buf + off + len, a->buf + off, a->len - off);
    if (buf != ((void*)0)) {
      memcpy(a->buf + off, buf, len);
    }
    a->len += len;
  } else {
    size_t min_size = (a->len + len);
    size_t new_size = (size_t)(min_size * MBUF_SIZE_MULTIPLIER);
    if (new_size - min_size > MBUF_SIZE_MAX_HEADROOM) {
      new_size = min_size + MBUF_SIZE_MAX_HEADROOM;
    }
    p = (char *) MBUF_REALLOC(a->buf, new_size);
    if (p == ((void*)0) && new_size != min_size) {
      new_size = min_size;
      p = (char *) MBUF_REALLOC(a->buf, new_size);
    }
    if (p != ((void*)0)) {
      a->buf = p;
      if (off != a->len) {
        memmove(a->buf + off + len, a->buf + off, a->len - off);
      }
      if (buf != ((void*)0)) memcpy(a->buf + off, buf, len);
      a->len += len;
      a->size = new_size;
    } else {
      len = 0;
    }
  }

  return len;
}
