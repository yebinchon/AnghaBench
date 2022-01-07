
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_image_pool {int num_images; scalar_t__ lru_counter; scalar_t__ use_lru; struct mp_image** images; } ;
struct mp_image {int imgfmt; int w; int h; struct image_flags* priv; TYPE_1__** bufs; } ;
struct image_flags {int pool_alive; int referenced; scalar_t__ order; } ;
struct TYPE_3__ {int size; int data; } ;


 int AV_BUFFER_FLAG_READONLY ;
 int MP_MAX_PLANES ;
 int assert (int) ;
 TYPE_1__* av_buffer_create (int ,int ,int ,struct mp_image*,int) ;
 scalar_t__ av_buffer_is_writable (TYPE_1__*) ;
 struct mp_image* mp_image_new_dummy_ref (struct mp_image*) ;
 int pool_lock () ;
 int pool_unlock () ;
 int talloc_free (struct mp_image*) ;
 int unref_image ;

struct mp_image *mp_image_pool_get_no_alloc(struct mp_image_pool *pool, int fmt,
                                            int w, int h)
{
    struct mp_image *new = ((void*)0);
    pool_lock();
    for (int n = 0; n < pool->num_images; n++) {
        struct mp_image *img = pool->images[n];
        struct image_flags *img_it = img->priv;
        assert(img_it->pool_alive);
        if (!img_it->referenced) {
            if (img->imgfmt == fmt && img->w == w && img->h == h) {
                if (pool->use_lru) {
                    struct image_flags *new_it = new ? new->priv : ((void*)0);
                    if (!new_it || new_it->order > img_it->order)
                        new = img;
                } else {
                    new = img;
                    break;
                }
            }
        }
    }
    pool_unlock();
    if (!new)
        return ((void*)0);




    for (int p = 0; p < MP_MAX_PLANES; p++)
        assert(!!new->bufs[p] == !p);

    struct mp_image *ref = mp_image_new_dummy_ref(new);




    int flags = av_buffer_is_writable(new->bufs[0]) ? 0 : AV_BUFFER_FLAG_READONLY;
    ref->bufs[0] = av_buffer_create(new->bufs[0]->data, new->bufs[0]->size,
                                    unref_image, new, flags);
    if (!ref->bufs[0]) {
        talloc_free(ref);
        return ((void*)0);
    }

    struct image_flags *it = new->priv;
    assert(!it->referenced && it->pool_alive);
    it->referenced = 1;
    it->order = ++pool->lru_counter;
    return ref;
}
