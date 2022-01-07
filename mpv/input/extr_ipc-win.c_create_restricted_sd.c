
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSECURITY_DESCRIPTOR ;


 int ConvertStringSecurityDescriptorToSecurityDescriptorA (char*,int ,int **,int *) ;
 int LocalFree (char*) ;
 int SDDL_REVISION_1 ;
 char* get_integrity_sid () ;
 char* get_user_sid () ;
 char* talloc_asprintf (int *,char*,char*,char*,char*) ;
 int talloc_free (char*) ;

__attribute__((used)) static PSECURITY_DESCRIPTOR create_restricted_sd(void)
{
    char *user_sid = get_user_sid();
    char *integrity_sid = get_integrity_sid();
    if (!user_sid || !integrity_sid)
        return ((void*)0);

    char *sddl = talloc_asprintf(((void*)0),
        "O:%s"
        "D:(A;;GRGW;;;%s)"
        "S:(ML;;NRNWNX;;;%s)",

        user_sid, user_sid, integrity_sid);
    LocalFree(user_sid);
    LocalFree(integrity_sid);

    PSECURITY_DESCRIPTOR sd = ((void*)0);
    ConvertStringSecurityDescriptorToSecurityDescriptorA(sddl, SDDL_REVISION_1,
        &sd, ((void*)0));
    talloc_free(sddl);

    return sd;
}
