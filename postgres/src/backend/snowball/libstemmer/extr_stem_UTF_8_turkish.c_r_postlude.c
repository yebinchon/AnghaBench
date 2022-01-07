
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int lb; int c; int l; } ;


 int r_append_U_to_stems_ending_with_d_or_g (struct SN_env*) ;
 int r_is_reserved_word (struct SN_env*) ;
 int r_post_process_last_consonants (struct SN_env*) ;

__attribute__((used)) static int r_postlude(struct SN_env * z) {
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        { int ret = r_is_reserved_word(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
        return 0;
    lab0:
        z->c = z->l - m1;
    }
    { int m2 = z->l - z->c; (void)m2;
        { int ret = r_append_U_to_stems_ending_with_d_or_g(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    { int m3 = z->l - z->c; (void)m3;
        { int ret = r_post_process_last_consonants(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    z->c = z->lb;
    return 1;
}
