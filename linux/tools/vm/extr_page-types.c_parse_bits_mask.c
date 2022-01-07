
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int KPF_ALL_BITS ;
 int add_bits_filter (int ,int ) ;
 int parse_flag_names (char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void parse_bits_mask(const char *optarg)
{
 uint64_t mask;
 uint64_t bits;
 const char *p;

 p = strchr(optarg, '=');
 if (p == optarg) {
  mask = KPF_ALL_BITS;
  bits = parse_flag_names(p + 1, 0);
 } else if (p) {
  mask = parse_flag_names(optarg, 0);
  bits = parse_flag_names(p + 1, 0);
 } else if (strchr(optarg, '~')) {
  mask = parse_flag_names(optarg, 1);
  bits = parse_flag_names(optarg, 0);
 } else {
  mask = parse_flag_names(optarg, 0);
  bits = KPF_ALL_BITS;
 }

 add_bits_filter(mask, bits);
}
