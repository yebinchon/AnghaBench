
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int dummy; } ;
struct mpv_node {int dummy; } ;
struct entry {char* src; int expect_fail; int out_data; int out_txt; } ;


 int MAX_DEPTH ;
 int MP_ARRAY_SIZE (struct entry*) ;
 int assert_string_equal (int ,char*) ;
 int assert_true (int) ;
 struct entry* entries ;
 int equal_mpv_node (int *,struct mpv_node*) ;
 scalar_t__ json_parse (void*,struct mpv_node*,char**,int ) ;
 int json_skip_whitespace (char**) ;
 scalar_t__ json_write (char**,struct mpv_node*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 char* talloc_strdup (void*,char*) ;

__attribute__((used)) static void run(struct test_ctx *ctx)
{
    for (int n = 0; n < MP_ARRAY_SIZE(entries); n++) {
        const struct entry *e = &entries[n];
        void *tmp = talloc_new(((void*)0));
        char *s = talloc_strdup(tmp, e->src);
        json_skip_whitespace(&s);
        struct mpv_node res;
        bool ok = json_parse(tmp, &res, &s, MAX_DEPTH) >= 0;
        assert_true(ok != e->expect_fail);
        if (!ok) {
            talloc_free(tmp);
            continue;
        }
        char *d = talloc_strdup(tmp, "");
        assert_true(json_write(&d, &res) >= 0);
        assert_string_equal(e->out_txt, d);
        assert_true(equal_mpv_node(&e->out_data, &res));
        talloc_free(tmp);
    }
}
