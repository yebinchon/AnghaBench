
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {scalar_t__ num; } ;


 int mp_chmap_diffn (struct mp_chmap*,struct mp_chmap*) ;
 int mp_chmap_diffn_r (struct mp_chmap*,struct mp_chmap*) ;
 scalar_t__ mp_chmap_equals (struct mp_chmap*,struct mp_chmap*) ;
 int mp_chmap_remove_na (struct mp_chmap*) ;
 int test_preferred_remix (struct mp_chmap*,struct mp_chmap*) ;

__attribute__((used)) static bool mp_chmap_is_better(struct mp_chmap *req, struct mp_chmap *old,
                               struct mp_chmap *new)
{

    if (!old->num)
        return 1;



    if (mp_chmap_equals(req, old))
        return 0;
    if (mp_chmap_equals(req, new))
        return 1;


    bool old_pref = test_preferred_remix(req, old);
    bool new_pref = test_preferred_remix(req, new);
    if (old_pref && !new_pref)
        return 0;
    if (!old_pref && new_pref)
        return 1;

    int old_lost_r = mp_chmap_diffn_r(req, old);
    int new_lost_r = mp_chmap_diffn_r(req, new);


    if (new_lost_r != old_lost_r)
        return new_lost_r < old_lost_r;

    struct mp_chmap old_p = *old, new_p = *new;
    mp_chmap_remove_na(&old_p);
    mp_chmap_remove_na(&new_p);




    bool perfect_r_new = !new_lost_r && new_p.num <= old_p.num;
    bool perfect_r_old = !old_lost_r && old_p.num <= new_p.num;
    if (perfect_r_new != perfect_r_old)
        return perfect_r_new;

    int old_lost = mp_chmap_diffn(req, old);
    int new_lost = mp_chmap_diffn(req, new);


    if (new_lost != old_lost)
        return new_lost < old_lost;





    if (new_p.num != old_p.num)
        return new_p.num < old_p.num;


    return new->num < old->num;
}
