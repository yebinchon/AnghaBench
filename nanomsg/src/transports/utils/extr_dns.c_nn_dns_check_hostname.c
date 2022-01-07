
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int nn_dns_check_hostname (const char *name, size_t namelen)
{
    int labelsz;



    if (namelen < 1 || namelen > 255)
        return -EINVAL;


    if (*name == '-')
        return -EINVAL;

    labelsz = 0;
    while (1) {


        if (namelen == 0) {

            return 0;
        }


        if (*name == '.') {


            if (labelsz == 0)
                return -EINVAL;


            labelsz = 0;
            ++name;
            --namelen;
            continue;
        }


        if ((*name >= 'a' && *name <= 'z') ||
              (*name >= 'A' && *name <= 'Z') ||
              (*name >= '0' && *name <= '9') ||
              *name == '-') {
            ++name;
            --namelen;
            ++labelsz;


            if (labelsz > 63)
                return -EINVAL;

            continue;
        }


        return -EINVAL;
    }
}
