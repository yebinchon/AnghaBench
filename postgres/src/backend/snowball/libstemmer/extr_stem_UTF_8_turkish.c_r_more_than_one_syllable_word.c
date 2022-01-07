
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; } ;


 int g_vowel ;
 int out_grouping_U (struct SN_env*,int ,int,int,int) ;

__attribute__((used)) static int r_more_than_one_syllable_word(struct SN_env * z) {
    { int c_test1 = z->c;
        { int i = 2;
            while(1) {
                int c2 = z->c;
                {
                    int ret = out_grouping_U(z, g_vowel, 97, 305, 1);
                    if (ret < 0) goto lab0;
                    z->c += ret;
                }
                i--;
                continue;
            lab0:
                z->c = c2;
                break;
            }
            if (i > 0) return 0;
        }
        z->c = c_test1;
    }
    return 1;
}
