
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {size_t len; size_t size; int * buf; } ;


 int ASSERT (int ) ;
 int ASSERT_EQ (size_t,size_t) ;
 int ASSERT_STREQ_NZ (int *,char*) ;
 size_t MBUF_SIZE_MULTIPLIER ;
 size_t mbuf_append (struct mbuf*,char const*,size_t) ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int) ;
 size_t mbuf_insert (struct mbuf*,size_t,char const*,int) ;
 int mbuf_resize (struct mbuf*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *test_mbuf(void) {
  struct mbuf io;
  const char *data = "TEST";
  const char *prefix = "MY";
  const char *big_prefix = "Some long prefix: ";
  size_t old_size;

  mbuf_init(&io, 0);
  ASSERT(io.buf == ((void*)0));
  ASSERT_EQ(io.len, 0);
  ASSERT_EQ(io.size, 0);
  mbuf_free(&io);
  ASSERT(io.buf == ((void*)0));
  ASSERT_EQ(io.len, 0);
  ASSERT_EQ(io.size, 0);

  mbuf_init(&io, 10);
  ASSERT(io.buf != ((void*)0));
  ASSERT_EQ(io.len, 0);
  ASSERT_EQ(io.size, 10);
  mbuf_free(&io);
  ASSERT(io.buf == ((void*)0));
  ASSERT_EQ(io.len, 0);
  ASSERT_EQ(io.size, 0);

  mbuf_init(&io, 10);
  ASSERT_EQ(mbuf_append(&io, ((void*)0), 0), 0);

  ASSERT_EQ(mbuf_append(&io, ((void*)0), 1125899906842624), 0);

  ASSERT_EQ(mbuf_append(&io, data, strlen(data)), strlen(data));

  mbuf_resize(&io, 2);
  ASSERT_EQ(io.size, 10);
  ASSERT_EQ(io.len, strlen(data));

  ASSERT_EQ(mbuf_insert(&io, 0, prefix, strlen(prefix)), strlen(prefix));
  ASSERT_EQ(io.size, 10);
  ASSERT_EQ(io.len, strlen(data) + strlen(prefix));

  ASSERT_EQ(mbuf_insert(&io, 0, big_prefix, strlen(big_prefix)),
            strlen(big_prefix));
  ASSERT_EQ(io.size, MBUF_SIZE_MULTIPLIER *
                         (strlen(big_prefix) + strlen(prefix) + strlen(data)));
  ASSERT_STREQ_NZ(io.buf, "Some long prefix: MYTEST");

  old_size = io.size;
  ASSERT_EQ(mbuf_insert(&io, strlen(big_prefix), data, strlen(data)),
            strlen(data));
  ASSERT_EQ(io.size, old_size);
  ASSERT_STREQ_NZ(io.buf, "Some long prefix: TESTMYTEST");


  ASSERT_EQ(mbuf_insert(&io, 0, ((void*)0), 1125899906842624), 0);


  ASSERT_EQ(mbuf_insert(&io, 0, ((void*)0), -1), 0);
  mbuf_free(&io);
  return ((void*)0);
}
