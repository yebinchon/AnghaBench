
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int lb; int c; int l; int * B; } ;


 int r_more_than_one_syllable_word (struct SN_env*) ;
 int r_postlude (struct SN_env*) ;
 int r_stem_nominal_verb_suffixes (struct SN_env*) ;
 int r_stem_noun_suffixes (struct SN_env*) ;

extern int turkish_UTF_8_stem(struct SN_env * z) {
    { int ret = r_more_than_one_syllable_word(z);
        if (ret <= 0) return ret;
    }
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        { int ret = r_stem_nominal_verb_suffixes(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    if (!(z->B[0])) return 0;
    { int m2 = z->l - z->c; (void)m2;
        { int ret = r_stem_noun_suffixes(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    z->c = z->lb;
    { int ret = r_postlude(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
