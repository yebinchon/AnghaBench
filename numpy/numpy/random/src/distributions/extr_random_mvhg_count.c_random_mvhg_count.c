
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int bitgen_t ;


 int free (size_t*) ;
 size_t* malloc (int) ;
 scalar_t__ random_interval (int *,size_t) ;

int random_mvhg_count(bitgen_t *bitgen_state,
                      int64_t total,
                      size_t num_colors, int64_t *colors,
                      int64_t nsample,
                      size_t num_variates, int64_t *variates)
{
    size_t *choices;
    bool more_than_half;

    if ((total == 0) || (nsample == 0) || (num_variates == 0)) {

        return 0;
    }

    choices = malloc(total * (sizeof *choices));
    if (choices == ((void*)0)) {
        return -1;
    }





    for (size_t i = 0, k = 0; i < num_colors; ++i) {
        for (int64_t j = 0; j < colors[i]; ++j) {
            choices[k] = i;
            ++k;
        }
    }

    more_than_half = nsample > (total / 2);
    if (more_than_half) {
        nsample = total - nsample;
    }

    for (size_t i = 0; i < num_variates * num_colors; i += num_colors) {






        for (size_t j = 0; j < (size_t) nsample; ++j) {
            size_t tmp, k;


            k = j + (size_t) random_interval(bitgen_state,
                                             (size_t) total - j - 1);
            tmp = choices[k];
            choices[k] = choices[j];
            choices[j] = tmp;
        }





        for (size_t j = 0; j < (size_t) nsample; ++j) {
            variates[i + choices[j]] += 1;
        }

        if (more_than_half) {
            for (size_t k = 0; k < num_colors; ++k) {
                variates[i + k] = colors[k] - variates[i + k];
            }
        }
    }

    free(choices);

    return 0;
}
