
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expected; int value; int format; } ;
typedef TYPE_1__ j_data ;
typedef int bio_buf ;


 int BIO_snprintf (char*,int,int ,int ) ;
 int TEST_str_eq (char*,int ) ;
 TYPE_1__* jf_data ;

__attribute__((used)) static int test_j(int i)
{
    const j_data *data = &jf_data[i];
    char bio_buf[80];

    BIO_snprintf(bio_buf, sizeof(bio_buf) - 1, data->format, data->value);
    if (!TEST_str_eq(bio_buf, data->expected))
        return 0;
    return 1;
}
