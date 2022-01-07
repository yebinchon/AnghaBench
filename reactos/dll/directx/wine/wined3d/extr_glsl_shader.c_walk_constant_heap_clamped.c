
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_vec4 {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct constant_heap {unsigned int size; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ version; unsigned int idx; } ;
typedef int GLint ;
typedef scalar_t__ DWORD ;





 int apply_clamped_constant (struct wined3d_gl_info const*,int const,struct wined3d_vec4 const*) ;
 int checkGLcall (char*) ;

__attribute__((used)) static inline void walk_constant_heap_clamped(const struct wined3d_gl_info *gl_info,
        const struct wined3d_vec4 *constants, const GLint *constant_locations,
        const struct constant_heap *heap, unsigned char *stack, DWORD version)
{
    int stack_idx = 0;
    unsigned int heap_idx = 1;
    unsigned int idx;

    if (heap->entries[heap_idx].version <= version) return;

    idx = heap->entries[heap_idx].idx;
    apply_clamped_constant(gl_info, constant_locations[idx], &constants[idx]);
    stack[stack_idx] = 129;

    while (stack_idx >= 0)
    {

        switch(stack[stack_idx])
        {
            case 129:
            {
                unsigned int left_idx = heap_idx << 1;
                if (left_idx < heap->size && heap->entries[left_idx].version > version)
                {
                    heap_idx = left_idx;
                    idx = heap->entries[heap_idx].idx;
                    apply_clamped_constant(gl_info, constant_locations[idx], &constants[idx]);

                    stack[stack_idx++] = 128;
                    stack[stack_idx] = 129;
                    break;
                }
            }

            case 128:
            {
                unsigned int right_idx = (heap_idx << 1) + 1;
                if (right_idx < heap->size && heap->entries[right_idx].version > version)
                {
                    heap_idx = right_idx;
                    idx = heap->entries[heap_idx].idx;
                    apply_clamped_constant(gl_info, constant_locations[idx], &constants[idx]);

                    stack[stack_idx++] = 130;
                    stack[stack_idx] = 129;
                    break;
                }
            }

            case 130:
                heap_idx >>= 1;
                --stack_idx;
                break;
        }
    }
    checkGLcall("walk_constant_heap_clamped()");
}
