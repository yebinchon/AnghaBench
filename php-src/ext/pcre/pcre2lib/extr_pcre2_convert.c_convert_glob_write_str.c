
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ output_size; int * output; int * output_end; int * out_str; } ;
typedef TYPE_1__ pcre2_output_context ;
typedef int PCRE2_UCHAR ;
typedef int * PCRE2_SPTR ;
typedef scalar_t__ PCRE2_SIZE ;



__attribute__((used)) static void
convert_glob_write_str(pcre2_output_context *out, PCRE2_SIZE length)
{
uint8_t *out_str = out->out_str;
PCRE2_UCHAR *output = out->output;
PCRE2_SPTR output_end = out->output_end;
PCRE2_SIZE output_size = out->output_size;

do
  {
  output_size++;

  if (output < output_end)
    *output++ = *out_str++;
  }
while (--length != 0);

out->output = output;
out->output_size = output_size;
}
