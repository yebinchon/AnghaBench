
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; } ;


 int r_fix_ending (struct SN_env*) ;

__attribute__((used)) static int r_fix_endings(struct SN_env * z) {
    { int c1 = z->c;
        while(1) {
            int c2 = z->c;
            { int ret = r_fix_ending(z);
                if (ret == 0) goto lab1;
                if (ret < 0) return ret;
            }
            continue;
        lab1:
            z->c = c2;
            break;
        }
        z->c = c1;
    }
    return 1;
}
