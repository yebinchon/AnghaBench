
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;



__attribute__((used)) static void convert_nfs4name_2_user_domain(LPSTR nfs4name,
                                           LPSTR *domain)
{
    LPSTR p = nfs4name;
    for(; p[0] != '\0'; p++) {
        if (p[0] == '@') {
            p[0] = '\0';
            *domain = &p[1];
            break;
        }
    }
}
