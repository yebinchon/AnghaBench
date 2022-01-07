
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sock_t ;
typedef int foo ;
typedef int buf ;


 int ASSERT (int) ;
 int ASSERT_EQ (int ,int) ;
 int ASSERT_STREQ (char*,char*) ;
 int SOCK_DGRAM ;
 int closesocket (int ) ;
 int mg_socketpair (int *,int ) ;
 int recv (int ,char*,int,int ) ;
 int send (int ,char const*,int,int ) ;

__attribute__((used)) static const char *test_socketpair(void) {
  sock_t sp[2];
  static const char foo[] = "hi there";
  char buf[20];

  ASSERT_EQ(mg_socketpair(sp, SOCK_DGRAM), 1);
  ASSERT(sizeof(foo) < sizeof(buf));


  ASSERT_EQ(send(sp[0], foo, sizeof(foo), 0), sizeof(foo));
  ASSERT_EQ(recv(sp[1], buf, sizeof(buf), 0), sizeof(foo));
  ASSERT_STREQ(buf, "hi there");


  ASSERT_EQ(send(sp[1], foo, sizeof(foo), 0), sizeof(foo));
  ASSERT_EQ(recv(sp[0], buf, sizeof(buf), 0), sizeof(foo));
  ASSERT_STREQ(buf, "hi there");

  closesocket(sp[0]);
  closesocket(sp[1]);

  return ((void*)0);
}
