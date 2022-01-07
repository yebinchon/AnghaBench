
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_renderpass_input {int name; } ;
typedef int inputs ;


 struct ra_renderpass_input* talloc_memdup (void*,void*,int) ;
 int talloc_strdup (struct ra_renderpass_input*,int ) ;

__attribute__((used)) static struct ra_renderpass_input *dup_inputs(void *ta_parent,
            const struct ra_renderpass_input *inputs, int num_inputs)
{
    struct ra_renderpass_input *res =
        talloc_memdup(ta_parent, (void *)inputs, num_inputs * sizeof(inputs[0]));
    for (int n = 0; n < num_inputs; n++)
        res[n].name = talloc_strdup(res, res[n].name);
    return res;
}
