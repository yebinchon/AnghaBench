
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct priv {int dummy; } ;


 int MP_ARRAY_SIZE (int **) ;
 int MP_VERBOSE (struct priv*,char*,int ,int ) ;
 int ** fudge_pairs ;
 int mp_chmap_to_lavc (int *) ;
 int mp_chmap_to_str (int *) ;

__attribute__((used)) static uint64_t fudge_layout_conversion(struct priv *p,
                                        uint64_t in, uint64_t out)
{
    for (int n = 0; n < MP_ARRAY_SIZE(fudge_pairs); n++) {
        uint64_t a = mp_chmap_to_lavc(&fudge_pairs[n][0]);
        uint64_t b = mp_chmap_to_lavc(&fudge_pairs[n][1]);
        if ((in & a) == a && (in & b) == 0 &&
            (out & a) == 0 && (out & b) == b)
        {
            out = (out & ~b) | a;

            MP_VERBOSE(p, "Fudge: %s -> %s\n",
                       mp_chmap_to_str(&fudge_pairs[n][0]),
                       mp_chmap_to_str(&fudge_pairs[n][1]));
        }
    }
    return out;
}
