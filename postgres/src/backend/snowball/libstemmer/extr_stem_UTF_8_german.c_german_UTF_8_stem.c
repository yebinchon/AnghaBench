
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int l; } ;


 int r_mark_regions (struct SN_env*) ;
 int r_postlude (struct SN_env*) ;
 int r_prelude (struct SN_env*) ;
 int r_standard_suffix (struct SN_env*) ;

extern int german_UTF_8_stem(struct SN_env * z) {
    { int c1 = z->c;
        { int ret = r_prelude(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    { int c2 = z->c;
        { int ret = r_mark_regions(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = c2;
    }
    z->lb = z->c; z->c = z->l;


    { int ret = r_standard_suffix(z);
        if (ret == 0) goto lab2;
        if (ret < 0) return ret;
    }
lab2:
    z->c = z->lb;
    { int c3 = z->c;
        { int ret = r_postlude(z);
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = c3;
    }
    return 1;
}
