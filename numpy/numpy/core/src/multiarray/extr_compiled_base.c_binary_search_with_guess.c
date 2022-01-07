
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef scalar_t__ npy_double ;


 int LIKELY_IN_CACHE_SIZE ;
 int _linear_search (scalar_t__ const,scalar_t__ const*,int,int) ;

__attribute__((used)) static npy_intp
binary_search_with_guess(const npy_double key, const npy_double *arr,
                         npy_intp len, npy_intp guess)
{
    npy_intp imin = 0;
    npy_intp imax = len;


    if (key > arr[len - 1]) {
        return len;
    }
    else if (key < arr[0]) {
        return -1;
    }





    if (len <= 4) {
        return _linear_search(key, arr, len, 1);
    }

    if (guess > len - 3) {
        guess = len - 3;
    }
    if (guess < 1) {
        guess = 1;
    }


    if (key < arr[guess]) {
        if (key < arr[guess - 1]) {
            imax = guess - 1;

            if (guess > LIKELY_IN_CACHE_SIZE &&
                        key >= arr[guess - LIKELY_IN_CACHE_SIZE]) {
                imin = guess - LIKELY_IN_CACHE_SIZE;
            }
        }
        else {

            return guess - 1;
        }
    }
    else {

        if (key < arr[guess + 1]) {
            return guess;
        }
        else {

            if (key < arr[guess + 2]) {
                return guess + 1;
            }
            else {

                imin = guess + 2;

                if (guess < len - LIKELY_IN_CACHE_SIZE - 1 &&
                            key < arr[guess + LIKELY_IN_CACHE_SIZE]) {
                    imax = guess + LIKELY_IN_CACHE_SIZE;
                }
            }
        }
    }


    while (imin < imax) {
        const npy_intp imid = imin + ((imax - imin) >> 1);
        if (key >= arr[imid]) {
            imin = imid + 1;
        }
        else {
            imax = imid;
        }
    }
    return imin - 1;
}
