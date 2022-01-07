
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setproperty_request {int data; int format; } ;
struct m_option {int dummy; } ;


 struct m_option* get_mp_type (int ) ;
 int m_option_free (struct m_option const*,int ) ;

__attribute__((used)) static void free_prop_set_req(void *ptr)
{
    struct setproperty_request *req = ptr;
    const struct m_option *type = get_mp_type(req->format);
    m_option_free(type, req->data);
}
