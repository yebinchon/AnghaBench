
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {scalar_t__ p; } ;


 int ASSERT_EQ (int ,int ) ;
 int ASSERT_MG_STREQ (struct mg_str,char*) ;
 int free (void*) ;
 int mg_assemble_uri (struct mg_str*,int *,int *,int ,struct mg_str*,int *,int *,int,struct mg_str*) ;
 struct mg_str mg_mk_str (char*) ;

__attribute__((used)) static const char *test_assemble_uri(void) {
  struct mg_str scheme, path, uri;
  {
    ASSERT_EQ(mg_assemble_uri(((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), 0, &uri),
              0);
    ASSERT_MG_STREQ(uri, "");
  }

  {
    scheme = mg_mk_str("file");
    path = mg_mk_str("/foo/bar");
    ASSERT_EQ(
        mg_assemble_uri(&scheme, ((void*)0), ((void*)0), 0, &path, ((void*)0), ((void*)0), 0, &uri), 0);
    ASSERT_MG_STREQ(uri, "file:///foo/bar");
    free((void *) uri.p);
  }

  {
    scheme = mg_mk_str("file");
    path = mg_mk_str("/foo/.././bar/baz");
    ASSERT_EQ(
        mg_assemble_uri(&scheme, ((void*)0), ((void*)0), 0, &path, ((void*)0), ((void*)0), 0, &uri), 0);
    ASSERT_MG_STREQ(uri, "file:///foo/.././bar/baz");
    free((void *) uri.p);
    ASSERT_EQ(
        mg_assemble_uri(&scheme, ((void*)0), ((void*)0), 0, &path, ((void*)0), ((void*)0), 1, &uri), 0);
    ASSERT_MG_STREQ(uri, "file:///bar/baz");
    free((void *) uri.p);
  }

  return ((void*)0);
}
