
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cases ;


 int ASSERT_EQ (int ,int) ;
 int ASSERT_STREQ (char*,char*) ;
 int mg_base64_decode (unsigned char*,int,char*) ;
 int mg_base64_encode (unsigned char*,int,char*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *test_base64(void) {
  const char *cases[] = {"test", "longer string"};
  unsigned long i;
  char enc[8192];
  char dec[8192];

  for (i = 0; i < sizeof(cases) / sizeof(cases[0]); i++) {
    mg_base64_encode((unsigned char *) cases[i], strlen(cases[i]), enc);
    mg_base64_decode((unsigned char *) enc, strlen(enc), dec);

    ASSERT_EQ(strcmp(cases[i], dec), 0);
  }

  ASSERT_EQ(mg_base64_decode((unsigned char *) "кю", 4, dec), 0);
  ASSERT_EQ(mg_base64_decode((unsigned char *) "AAAA----", 8, dec), 4);
  ASSERT_EQ(mg_base64_decode((unsigned char *) "Q2VzYW50YQ==", 12, dec), 12);
  ASSERT_STREQ(dec, "Cesanta");

  return ((void*)0);
}
