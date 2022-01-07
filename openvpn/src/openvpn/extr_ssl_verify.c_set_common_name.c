
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct tls_session {scalar_t__ common_name_hashval; int * common_name; } ;


 int free (int *) ;
 scalar_t__ hash_func (int const*,scalar_t__ const,int ) ;
 int * string_alloc (char const*,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void
set_common_name(struct tls_session *session, const char *common_name)
{
    if (session->common_name)
    {
        free(session->common_name);
        session->common_name = ((void*)0);



    }
    if (common_name)
    {

        session->common_name = string_alloc(common_name, ((void*)0));
    }
}
