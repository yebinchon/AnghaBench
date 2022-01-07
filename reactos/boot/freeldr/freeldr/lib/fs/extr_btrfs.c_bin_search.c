
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* cmp_func ) (void*,void*) ;
typedef int UCHAR ;



__attribute__((used)) static int bin_search(void *ptr, int item_size, void *cmp_item, cmp_func func,
                      int min, int max, int *slot)
{
    int low = min;
    int high = max;
    int mid;
    int ret;
    unsigned long offset;
    UCHAR *item;

    while (low < high)
    {
        mid = (low + high) / 2;
        offset = mid * item_size;

        item = (UCHAR *) ptr + offset;
        ret = func((void *) item, cmp_item);

        if (ret < 0)
        {
            low = mid + 1;
        }
        else if (ret > 0)
        {
            high = mid;
        }
        else
        {
            *slot = mid;
            return 0;
        }
    }
    *slot = low;
    return 1;
}
