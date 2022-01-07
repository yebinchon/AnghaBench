
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {int num_chmaps; int member_0; } ;
struct mp_chmap {int dummy; } ;


 int assert_string_equal (int ,int ) ;
 int assert_true (int) ;
 int bstr0 (char const*) ;
 int mp_chmap_from_str (struct mp_chmap*,int ) ;
 int mp_chmap_sel_add_map (struct mp_chmap_sel*,struct mp_chmap*) ;
 int mp_chmap_sel_fallback (struct mp_chmap_sel*,struct mp_chmap*) ;
 int mp_chmap_to_str (struct mp_chmap*) ;

__attribute__((used)) static void test_sel(const char *input, const char *expected_selection,
                     char **layouts)
{
    struct mp_chmap_sel s = {0};
    struct mp_chmap input_map;
    struct mp_chmap expected_map;

    assert_true(mp_chmap_from_str(&input_map, bstr0(input)));
    assert_true(mp_chmap_from_str(&expected_map, bstr0(expected_selection)));

    for (int n = 0; layouts[n]; n++) {
        struct mp_chmap tmp;
        assert_true(mp_chmap_from_str(&tmp, bstr0(layouts[n])));
        int count = s.num_chmaps;
        mp_chmap_sel_add_map(&s, &tmp);
        assert_true(s.num_chmaps > count);
    }

    assert_true(mp_chmap_sel_fallback(&s, &input_map));


    assert_string_equal(mp_chmap_to_str(&input_map),
                        mp_chmap_to_str(&expected_map));
}
